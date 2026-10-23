//! Library for AOT-compiling `.wasm` files into `.meta`/`.aot` file pairs via `wamrc`.
#![warn(missing_docs)]

use std::fmt::Write as _;
use std::io::Write;
use std::path::{Path, PathBuf};
use std::str::FromStr;

use anyhow::{Context, format_err};
use clap::ValueEnum;
use owo_colors::OwoColorize;
use sha2::Digest;

/// List of AOT targets
#[derive(Debug, Copy, Clone, ValueEnum)]
#[allow(non_camel_case_types, missing_docs)]
pub enum Target {
    ESP32C5,
    ESP32C6,
    ESP32C61,
}

impl Target {
    /// Translate the target into the corresponding `wamrc` CLI flags.
    pub fn to_wamrc_args(self) -> Vec<&'static str> {
        match self {
            // TODO: try `+unaligned-scalar-mem` here too (see the C6 arm). Their TRMs indicate
            // it is supported: the HP CPU's exception codes include no load-misaligned cause,
            // mcause 6 is raised only for misaligned atomics (LR/SC/AMO), and the bus-error
            // section mentions "misaligned accesses which are split into multiple loads/stores".
            // Not yet tested on hardware, though, and nothing is documented for PSRAM, where
            // `esp-heap` places general allocations (likely including a cell's linear memory)
            // on these chips. Run the same misaligned `lw`/`sw` test there before enabling it.
            Self::ESP32C5 | Self::ESP32C61 => vec![
                "--target=riscv32",
                "--target-abi=ilp32",
                "--cpu=generic-rv32",
                "--cpu-features=+i,+m,+a,+c",
            ],
            // `+unaligned-scalar-mem` lets LLVM emit one `lw`/`sw` per wasm load/store. WAMR
            // gives every non-atomic access alignment 1 (the wasm `align` immediate is only a
            // hint, so it cannot be trusted), and without this feature LLVM splits each one
            // into byte accesses plus shifts/ors. The C6 does misaligned `lw`/`sw` in hardware
            // (147 ns vs 125 ns aligned, no trap). Measured on a C6: sum 5.6x -> 3.0x native,
            // scale 4.5x -> 2.6x, memcpy-style copy 8.4x -> 6.2x, AOT 22% smaller.
            Self::ESP32C6 => vec![
                "--target=riscv32",
                "--target-abi=ilp32",
                "--cpu=generic-rv32",
                "--cpu-features=+i,+m,+a,+c,+unaligned-scalar-mem",
            ],
        }
    }
}

impl FromStr for Target {
    type Err = String;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        for variant in Self::value_variants() {
            if variant.to_possible_value().unwrap().matches(s, false) {
                return Ok(*variant);
            }
        }

        Err(format!("Invalid variant {s}"))
    }
}

/// Paths produced by a successful [`compile`] invocation.
#[derive(Debug, Clone)]
pub struct Artifacts {
    /// Path to the generated `.aot` file.
    pub aot: PathBuf,
    /// Path to the generated `.meta` file.
    pub meta: PathBuf,
}

/// Verify that the `wamrc` binary is on `PATH`.
pub fn ensure_wamrc() -> anyhow::Result<()> {
    // Make sure `wamrc` is there
    if which::which("wamrc").is_err() {
        anyhow::bail!(
            "{}",
            "\"wamrc\" binary not found. Please install it by following the instructions at \
            https://wamr.gitbook.io/document/wamr-in-practice/tutorial/build-tutorial/build_wamrc"
                .red()
                .bold()
        );
    }
    // Also make sure it's the right version
    let output = std::process::Command::new("wamrc")
        .arg("--version")
        .output()
        .context("failed to invoke wamrc")?;
    let version =
        String::from_utf8(output.stdout).context("failed to parse wamrc version output")?;
    if !version.starts_with("wamrc 2.4.4") {
        anyhow::bail!(
            "{}",
            format!(
                "wamrc version 2.4.4 is required, but found {version}. Please install it by \
                following the instructions at \
                https://wamr.gitbook.io/document/wamr-in-practice/tutorial/build-tutorial/build_wamrc \
                and making sure you use the correct tag/release."
            )
            .red()
            .bold()
        );
    }

    Ok(())
}

/// Opt-in: set to `1` to hand `wamrc` the firmware's host-function signatures (the `host-abi`
/// table), so calls from a cell to the firmware compile to direct calls instead of WAMR's
/// generic `aot_invoke_native` path. Measured on an ESP32-C6: a near-empty host call 7.3 µs ->
/// 2.0 µs.
///
/// Off by default because the AOT file does not record the signatures it was compiled with,
/// and the firmware does not check them when loading: the cell must run on a firmware built
/// from the same `host-abi` table, or a pointer argument could reach the host unchecked.
/// Needs a C compiler (`$CC`, or `cc`) to build the small libraries `wamrc --native-lib` loads.
pub const HOST_SIGNATURES_ENV: &str = "MYRMIC_AOT_HOST_SIGNATURES";

/// `wamrc` accepts at most this many `--native-lib` libraries (`native_lib_list[8]` in its
/// `main.c`), and each library describes one module.
const WAMRC_MAX_NATIVE_LIBS: usize = 8;

/// The import modules `wasm` uses.
fn imported_modules(wasm: &[u8]) -> anyhow::Result<std::collections::BTreeSet<String>> {
    let mut modules = std::collections::BTreeSet::new();
    for payload in wasmparser::Parser::new(0).parse_all(wasm) {
        if let wasmparser::Payload::ImportSection(reader) = payload? {
            for import in reader.into_imports() {
                modules.insert(import?.module.to_owned());
            }
        }
    }
    Ok(modules)
}

/// Builds (or reuses) a `wamrc --native-lib` library for each `host-abi` module `wasm_file`
/// imports and returns the `--native-lib=...` arguments. Only names and signatures matter to
/// `wamrc`; the function pointers are placeholders. A module left out (beyond wamrc's limit, or
/// not in the table) still works: its calls take the generic path.
fn host_signature_args(wasm_file: &Path) -> anyhow::Result<Vec<String>> {
    let imported = imported_modules(&std::fs::read(wasm_file)?)?;
    let mut modules: Vec<&host_abi::HostModule> = host_abi::MODULES
        .iter()
        .filter(|m| imported.contains(m.name))
        .collect();
    if modules.len() > WAMRC_MAX_NATIVE_LIBS {
        let skipped: Vec<&str> = modules[WAMRC_MAX_NATIVE_LIBS..]
            .iter()
            .map(|m| m.name)
            .collect();
        eprintln!(
            "{}",
            format!(
                "wamrc takes at most {WAMRC_MAX_NATIVE_LIBS} native libraries; calls into {} \
                 keep the generic path",
                skipped.join(", ")
            )
            .yellow()
        );
        modules.truncate(WAMRC_MAX_NATIVE_LIBS);
    }

    let sources: Vec<(&str, String)> = modules
        .iter()
        .map(|module| {
            let mut symbols = String::new();
            for f in module.functions {
                let _ = writeln!(symbols, "    {{\"{}\", (void *)stub, \"{}\", 0}},", f.name, f.signature);
            }
            let source = format!(
                "/* Generated by aot-compiler from the host-abi table: wasm module `{name}`. */\n\
                 #include <stdint.h>\n\
                 typedef struct {{ const char *symbol; void *func_ptr; const char *signature; void *attachment; }} NativeSymbol;\n\
                 static void stub(void) {{}}\n\
                 static NativeSymbol symbols[] = {{\n{symbols}}};\n\
                 uint32_t get_native_lib(char **module_name, NativeSymbol **native_symbols) {{\n\
                 \x20   *module_name = \"{name}\";\n\
                 \x20   *native_symbols = symbols;\n\
                 \x20   return sizeof(symbols) / sizeof(symbols[0]);\n\
                 }}\n",
                name = module.name,
            );
            (module.name, source)
        })
        .collect();

    // One cache directory per set of generated sources, so a changed table never reuses stale
    // libraries.
    let mut hasher = sha2::Sha256::new();
    for (_, source) in &sources {
        hasher.update(source.as_bytes());
    }
    let mut key = String::new();
    for b in &hasher.finalize()[..8] {
        let _ = write!(key, "{b:02x}");
    }
    let dir = std::env::temp_dir().join("myrmic-aot-host-abi").join(key);
    std::fs::create_dir_all(&dir).with_context(|| format!("failed to create {}", dir.display()))?;

    let cc = std::env::var("CC").unwrap_or_else(|_| "cc".to_owned());
    sources
        .iter()
        .map(|(name, source)| {
            let lib = dir.join(format!("lib{name}.so"));
            if !lib.exists() {
                let c_file = dir.join(format!("{name}.c"));
                std::fs::write(&c_file, source)?;
                // Build under a temporary name, so an interrupted build never leaves a library
                // that the existence check above would then trust.
                let tmp = dir.join(format!("lib{name}.so.tmp"));
                let status = std::process::Command::new(&cc)
                    .args(["-shared", "-fPIC", "-o"])
                    .arg(&tmp)
                    .arg(&c_file)
                    .status()
                    .with_context(|| format!("failed to invoke the C compiler `{cc}`"))?;
                if !status.success() {
                    anyhow::bail!(
                        "`{cc}` failed to build the host-abi library for `{name}`: {status}"
                    );
                }
                std::fs::rename(&tmp, &lib)?;
            }
            Ok(format!("--native-lib={}", lib.display()))
        })
        .collect()
}

/// Compile `wasm_file` for `target`, writing `.aot` and `.meta` files into `out_dir`.
pub fn compile(wasm_file: &Path, target: Target, out_dir: &Path) -> anyhow::Result<Artifacts> {
    let filename = wasm_file
        .file_stem()
        .ok_or_else(|| format_err!("not a file"))?;

    let meta_file = out_dir.join(Path::new(filename).with_extension("meta"));
    let aot_file = out_dir.join(Path::new(filename).with_extension("aot"));

    // wamrc ignores options after the input file, so these go first.
    let host_signatures = if std::env::var(HOST_SIGNATURES_ENV).is_ok_and(|v| v == "1") {
        eprintln!(
            "{}",
            format!(
                "{HOST_SIGNATURES_ENV}=1: compiling with the host-abi signatures; run this cell \
                 only on a firmware built from the same sources"
            )
            .yellow()
        );
        host_signature_args(wasm_file)?
    } else {
        Vec::new()
    };

    // Call wamrc to spit out AOT file
    let status = std::process::Command::new("wamrc")
        .args(&host_signatures)
        .arg("--xip")
        .args(target.to_wamrc_args())
        .args(["-o", &format!("{}", aot_file.display())])
        .arg(wasm_file.as_os_str())
        .status()
        .context("failed to invoke wamrc")?;

    if !status.success() {
        anyhow::bail!("wamrc exited with {status}");
    }

    // Now that we have the AOT file, let's generate the metadata file for it
    let len = u32::try_from(aot_file.metadata()?.len())
        .expect("metadata doesn't support such large files");
    let aot_bytes = std::fs::read(&aot_file)?;
    let crc = wasm_storage::metadata::CRC.checksum(aot_bytes.as_slice());
    let metadata =
        wasm_storage::__reexports::postcard::to_allocvec(&wasm_storage::metadata::Metadata {
            magic: wasm_storage::metadata::MAGIC,
            version: wasm_storage::metadata::VERSION,
            len,
            crc,
            hash: sha2::Sha256::digest(aot_bytes.as_slice())
                .to_vec()
                .try_into()
                .expect("SHA256 hash should always be 32 bytes"),
        })?;
    std::fs::File::create(&meta_file)?.write_all(&metadata)?;

    Ok(Artifacts {
        aot: aot_file,
        meta: meta_file,
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn finds_imported_modules() {
        // (module (type (func (param i32 i32) (result i32))) (import "time" "uptime_host" (func (type 0))))
        let mut wasm = b"\0asm\x01\0\0\0".to_vec();
        wasm.extend_from_slice(&[0x01, 0x07, 0x01, 0x60, 0x02, 0x7f, 0x7f, 0x01, 0x7f]);
        wasm.extend_from_slice(&[0x02, 0x14, 0x01, 0x04]);
        wasm.extend_from_slice(b"time");
        wasm.push(0x0b);
        wasm.extend_from_slice(b"uptime_host");
        wasm.extend_from_slice(&[0x00, 0x00]);

        let modules = imported_modules(&wasm).unwrap();
        assert_eq!(modules.into_iter().collect::<Vec<_>>(), ["time"]);
    }
}
