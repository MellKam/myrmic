use anyhow::Context as _;
use myrmic_build::firmware::Chip;
use textus::Template as _;

use crate::args::Ctx;
use crate::{determine_name, models};

#[derive(clap::Parser)]
pub struct New {
    path: std::path::PathBuf,

    #[clap(short, long)]
    name: Option<String>,

    /// Scaffold a firmware crate for this chip (`esp32c5`, `esp32c6`, `esp32c61`)
    /// instead of a cell.
    #[clap(short, long, num_args = 0..=1, default_missing_value = "esp32c6")]
    firmware: Option<Chip>,

    /// Also scaffold a Signal Layer pipeline (board.yml + pipeline.yml). With
    /// --firmware the pipeline is generated into the firmware image; on its own
    /// it scaffolds a standalone Linux pipeline project.
    #[clap(long)]
    pipeline: bool,

    #[clap(long, alias = "repo")]
    sdk: Option<String>,

    /// Scaffold a Signal Layer driver for this bus. Requires a value:
    /// `--driver=i2c` or `--driver=spi`.
    #[clap(long, require_equals = true, conflicts_with_all = ["firmware", "pipeline", "step"])]
    driver: Option<Transport>,

    /// Scaffold a Signal Layer processing step.
    #[clap(long, conflicts_with_all = ["firmware", "pipeline", "driver"])]
    step: bool,

    /// Base directory a scaffolded driver/step is placed under, as
    /// `drivers/<id>` or `steps/<id>` (default: the current directory). Point a
    /// pipeline's build.rs at this directory to enumerate the modules in it.
    #[clap(long)]
    registry_dir: Option<std::path::PathBuf>,
}

/// The bus a scaffolded driver talks over.
#[derive(Clone, Copy, PartialEq, Eq)]
enum Transport {
    I2c,
    Spi,
}

impl std::str::FromStr for Transport {
    type Err = anyhow::Error;
    fn from_str(s: &str) -> anyhow::Result<Self> {
        match s {
            "i2c" => Ok(Self::I2c),
            "spi" => Ok(Self::Spi),
            other => anyhow::bail!("unknown bus `{other}`; expected `i2c` or `spi`"),
        }
    }
}

#[derive(textus::Template)]
#[template(path = "templates/new", strip_suffix = ".tmpl")]
struct TemplateNew<'a> {
    name: &'a str,
    myrmic_sdk: models::CargoDep,
    toolchain: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/firmware", strip_suffix = ".tmpl")]
struct TemplateNewFirmware<'a> {
    name: &'a str,
    chip: &'a str,
    firmware_sdk: models::CargoDep,
    firmware_build: models::CargoDep,
    toolchain: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/firmware-pipeline", strip_suffix = ".tmpl")]
struct TemplateNewFirmwarePipeline<'a> {
    name: &'a str,
    chip: &'a str,
    scl: u8,
    sda: u8,
    general_purpose: String,
    firmware_sdk: models::CargoDep,
    firmware_build: models::CargoDep,
    module_deps: String,
    pipeline_feature_deps: String,
    toolchain: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/linux-pipeline", strip_suffix = ".tmpl")]
struct TemplateNewLinuxPipeline<'a> {
    name: &'a str,
    runtime_deps: String,
    module_deps: String,
    linux_codegen: models::CargoDep,
}

#[derive(textus::Template)]
#[template(path = "templates/driver-i2c", strip_suffix = ".tmpl")]
struct TemplateNewDriverI2c<'a> {
    id: &'a str,
    crate_name: &'a str,
    type_name: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/driver-spi", strip_suffix = ".tmpl")]
struct TemplateNewDriverSpi<'a> {
    id: &'a str,
    crate_name: &'a str,
    type_name: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/step", strip_suffix = ".tmpl")]
struct TemplateNewStep<'a> {
    id: &'a str,
    crate_name: &'a str,
    type_name: &'a str,
    signal_layer_core: models::CargoDep,
}

pub fn handle(ctx: &Ctx, cmd: New) -> anyhow::Result<()> {
    let New {
        path,
        name,
        sdk: repo,
        firmware,
        pipeline,
        driver,
        step,
        registry_dir,
    } = cmd;

    if let Some(transport) = driver {
        return handle_module(
            ctx,
            ModuleKind::Driver(transport),
            &path,
            name.as_deref(),
            repo.as_deref(),
            registry_dir.as_deref(),
        );
    }
    if step {
        return handle_module(
            ctx,
            ModuleKind::Step,
            &path,
            name.as_deref(),
            repo.as_deref(),
            registry_dir.as_deref(),
        );
    }

    let name = determine_name(name.as_deref(), &path)?;

    validate_name(name)?;

    match (firmware, pipeline) {
        (Some(chip), true) => {
            crate::info!(ctx, "Creating firmware pipeline '{}' for {}", name, chip);
        }
        (Some(chip), false) => crate::info!(ctx, "Creating firmware '{}' for {}", name, chip),
        (None, true) => crate::info!(ctx, "Creating Linux pipeline '{}'", name),
        (None, false) => crate::info!(ctx, "Creating '{}'", name),
    }

    let repo = crate::utils::resolve_repo(ctx, repo.as_deref())?;

    render_project(repo, name, firmware, pipeline, &path)?;

    // A firmware crate also gets the partition layout for its chip - the same
    // per-chip files `modem-esp32` builds with (C5/C6 = 4 MB, C61 = 8 MB).
    if let Some(chip) = firmware {
        let partitions = match chip {
            Chip::Esp32c5 => {
                include_str!("../../../../embedded/esp-hal/modem-esp32/partitions/esp32c5.toml")
            }
            Chip::Esp32c6 => {
                include_str!("../../../../embedded/esp-hal/modem-esp32/partitions/esp32c6.toml")
            }
            Chip::Esp32c61 => {
                include_str!("../../../../embedded/esp-hal/modem-esp32/partitions/esp32c61.toml")
            }
        };
        let dst = path.join("partitions.toml");
        if let Err(e) = std::fs::write(&dst, partitions) {
            return Err(anyhow::Error::new(e).context(format!("failed to write {}", dst.display())));
        }
    }

    Ok(())
}

/// A Signal Layer module scaffold: a driver on a bus, or a processing step.
#[derive(Clone, Copy)]
enum ModuleKind {
    Driver(Transport),
    Step,
}

/// Scaffolds an out-of-tree Signal Layer driver or step under
/// `<registry_dir>/<drivers|steps>/<id>` - the layout a pipeline's `build.rs`
/// enumerates via `build_pipeline(.., Some(<registry_dir>))` / `.include(..)`.
fn handle_module(
    ctx: &Ctx,
    kind: ModuleKind,
    positional: &std::path::Path,
    name: Option<&str>,
    repo: Option<&str>,
    registry_dir: Option<&std::path::Path>,
) -> anyhow::Result<()> {
    // The positional argument is the module id, not a filesystem path.
    if positional.components().count() != 1 {
        anyhow::bail!(
            "pass just the module id (e.g. `bme280`), not a path; use --registry-dir for the location"
        );
    }
    let id = determine_name(name, positional)?;
    validate_name(id)?;

    let (subdir, kind_label, shipped, crate_name) = match kind {
        ModuleKind::Driver(_) => (
            "drivers",
            "driver",
            esp_codegen::driver_ids(),
            format!("{id}-driver"),
        ),
        ModuleKind::Step => ("steps", "step", esp_codegen::step_ids(), id.to_owned()),
    };

    if shipped.iter().any(|s| s == id) {
        crate::warn!(
            ctx,
            "a {kind_label} `{id}` already ships with myrmic; a module with the same id overlays \
             the shipped one wherever this registry is included"
        );
    }

    let base = match registry_dir {
        Some(dir) => dir.to_path_buf(),
        None => std::env::current_dir().context("cannot determine the current directory")?,
    };
    let crate_dir = base.join(subdir).join(id);
    if crate_dir.exists() {
        anyhow::bail!("{} already exists", crate_dir.display());
    }

    let repo = crate::utils::resolve_repo(ctx, repo)?;

    crate::info!(
        ctx,
        "Creating Signal Layer {kind_label} '{id}' in {}",
        crate_dir.display()
    );
    render_module(kind, id, &crate_name, &repo, &crate_dir)?;

    crate::info!(
        ctx,
        "Add `{crate_name} = {{ path = \"{}\" }}` to a pipeline's dependencies and point its \
         build.rs at `{}` to build with it.",
        crate_dir.display(),
        base.display()
    );

    Ok(())
}

/// Renders the module template for `kind` into `crate_dir`, cleaning it up on
/// failure.
fn render_module(
    kind: ModuleKind,
    id: &str,
    crate_name: &str,
    repo: &models::Repo,
    crate_dir: &std::path::Path,
) -> anyhow::Result<()> {
    let type_name = pascal_case(id);

    if let Some(parent) = crate_dir.parent() {
        std::fs::create_dir_all(parent)
            .with_context(|| format!("failed to create {}", parent.display()))?;
    }

    let result = match kind {
        ModuleKind::Driver(Transport::I2c) => TemplateNewDriverI2c {
            id,
            crate_name,
            type_name: &type_name,
        }
        .render_into(crate_dir),
        ModuleKind::Driver(Transport::Spi) => TemplateNewDriverSpi {
            id,
            crate_name,
            type_name: &type_name,
        }
        .render_into(crate_dir),
        ModuleKind::Step => {
            let signal_layer_core = repo
                .clone()
                .resolve_or_assume_correct("sdk/signal-layer/signal-layer-core");
            TemplateNewStep {
                id,
                crate_name,
                type_name: &type_name,
                signal_layer_core,
            }
            .render_into(crate_dir)
        }
    };

    if let Err(err) = result {
        if let Err(io_err) = std::fs::remove_dir_all(crate_dir) {
            return Err(anyhow::Error::new(io_err).context(format!(
                "unable to cleanup after template render failure: {err}"
            )));
        }
        return Err(anyhow::Error::new(err).context("failed to render template"));
    }

    Ok(())
}

/// `moving-average` -> `MovingAverage`, `bme280` -> `Bme280`.
fn pascal_case(id: &str) -> String {
    id.split(['-', '_'])
        .filter(|word| !word.is_empty())
        .map(|word| {
            let mut chars = word.chars();
            match chars.next() {
                Some(first) => first.to_ascii_uppercase().to_string() + chars.as_str(),
                None => String::new(),
            }
        })
        .collect()
}

/// Renders the selected project template into `path`, cleaning up the directory
/// on failure.
fn render_project(
    repo: models::Repo,
    name: &str,
    firmware: Option<Chip>,
    pipeline: bool,
    path: &std::path::Path,
) -> anyhow::Result<()> {
    // Only a directory we create is ours to clean up on failure; never delete a
    // directory the user pointed us at that already held files.
    let preexisting = path.exists();

    let result = match (firmware, pipeline) {
        (Some(chip), true) => {
            let BoardPins {
                scl,
                sda,
                general_purpose,
            } = board_pins(chip.name())?;
            let firmware_sdk = repo
                .clone()
                .resolve_or_assume_correct("embedded/esp-hal/crates/esp-firmware");
            let firmware_build = repo
                .clone()
                .resolve_or_assume_correct("embedded/esp-hal/crates/esp-firmware-build");
            let (module_deps, pipeline_feature_deps) = module_dep_lines(&repo);

            TemplateNewFirmwarePipeline {
                name,
                chip: chip.name(),
                scl,
                sda,
                general_purpose,
                firmware_sdk,
                firmware_build,
                module_deps,
                pipeline_feature_deps,
                toolchain: myrmic_build::TOOLCHAIN,
            }
            .render_into(path)
        }
        (Some(chip), false) => {
            let firmware_sdk = repo
                .clone()
                .resolve_or_assume_correct("embedded/esp-hal/crates/esp-firmware");
            let firmware_build =
                repo.resolve_or_assume_correct("embedded/esp-hal/crates/esp-firmware-build");

            TemplateNewFirmware {
                name,
                chip: chip.name(),
                firmware_sdk,
                firmware_build,
                toolchain: myrmic_build::TOOLCHAIN,
            }
            .render_into(path)
        }
        (None, true) => {
            let linux_codegen = repo
                .clone()
                .resolve_or_assume_correct("sdk/signal-layer/linux-codegen");
            let runtime_deps = linux_runtime_deps(&repo);
            let module_deps = linux_module_deps(&repo);

            TemplateNewLinuxPipeline {
                name,
                runtime_deps,
                module_deps,
                linux_codegen,
            }
            .render_into(path)
        }
        (None, false) => {
            let sdk = repo.resolve_or_assume_correct("sdk/myrmic-sdk");

            TemplateNew {
                name,
                myrmic_sdk: sdk,
                toolchain: myrmic_build::TOOLCHAIN,
            }
            .render_into(path)
        }
    };

    if let Err(err) = result {
        if !preexisting && let Err(io_err) = std::fs::remove_dir_all(path) {
            return Err(anyhow::Error::new(io_err).context(format!(
                "unable to cleanup after template render failure: {err}"
            )));
        }
        return Err(anyhow::Error::new(err).context("failed to render template"));
    }

    Ok(())
}

/// Renders the driver/step dependency lines and the `pipeline` feature's
/// `dep:` list, seeding every module shipped with myrmic so any pipeline built
/// from them compiles.
fn module_dep_lines(repo: &models::Repo) -> (String, String) {
    let modules = esp_codegen::driver_ids()
        .into_iter()
        .map(|id| {
            (
                format!("{id}-driver"),
                format!("signal-modules/drivers/{id}"),
            )
        })
        .chain(
            esp_codegen::step_ids()
                .into_iter()
                .map(|id| (id.clone(), format!("signal-modules/steps/{id}"))),
        );

    let mut deps = Vec::new();
    let mut feats = Vec::new();
    for (crate_name, rel_path) in modules {
        let dep = repo.clone().resolve_or_assume_correct(&rel_path);
        deps.push(format!("{crate_name} = {}", optional_dep(&dep)));
        feats.push(format!("    \"dep:{crate_name}\","));
    }
    (deps.join("\n"), feats.join("\n"))
}

/// Renders a [`models::CargoDep`] as a dependency table with `optional = true`.
fn optional_dep(dep: &models::CargoDep) -> String {
    let rendered = dep.to_string();
    match rendered.strip_suffix(" }") {
        Some(inner) => format!("{inner}, optional = true }}"),
        None => format!("{{ version = {rendered}, optional = true }}"),
    }
}

/// The example i2c bus pins for `chip` and, rendered as the board manifest's
/// `general_purpose` list, every other usable GPIO.
struct BoardPins {
    scl: u8,
    sda: u8,
    general_purpose: String,
}

fn board_pins(chip: &str) -> anyhow::Result<BoardPins> {
    let usable = esp_codegen::chip_general_purpose_pins(chip)
        .with_context(|| format!("no GPIO layout for chip `{chip}`"))?;
    let (scl, sda) = pick_bus_pins(chip, &usable)?;
    let general_purpose = usable
        .iter()
        .copied()
        .filter(|pin| *pin != scl && *pin != sda)
        .map(|pin| pin.to_string())
        .collect::<Vec<_>>()
        .join(", ");
    Ok(BoardPins {
        scl,
        sda,
        general_purpose,
    })
}

/// Picks the example i2c bus pins: the conventional devkit pins for the chip
/// when both are usable, else the first two usable pins.
fn pick_bus_pins(chip: &str, usable: &[u8]) -> anyhow::Result<(u8, u8)> {
    let conventional = match chip {
        "esp32c6" => Some((10u8, 11u8)),
        "esp32c5" | "esp32c61" => Some((23u8, 24u8)),
        _ => None,
    };
    if let Some((scl, sda)) = conventional
        && usable.contains(&scl)
        && usable.contains(&sda)
    {
        return Ok((scl, sda));
    }
    let mut it = usable.iter().copied();
    let scl = it.next().context("chip has no usable GPIOs")?;
    let sda = it
        .next()
        .context("chip needs at least two usable GPIOs for the example bus")?;
    Ok((scl, sda))
}

/// Renders the Linux Signal Layer runtime dependency lines: git or path for the
/// peeriot crates, versions for the crates.io ones.
fn linux_runtime_deps(repo: &models::Repo) -> String {
    let dep = |path: &str| repo.clone().resolve_or_assume_correct(path);
    let mut lines = vec![
        format!(
            "signal-layer-ipc      = {}",
            dep("sdk/signal-layer/signal-layer-ipc")
        ),
        format!(
            "signal-layer-linux-rt = {}",
            dep("swarm/signal-layer/signal-layer-linux-rt")
        ),
        format!(
            "linux-i2c-shim        = {}",
            dep("swarm/signal-layer/linux-i2c-shim")
        ),
        format!(
            "linux-gpio-shim       = {}",
            dep("swarm/signal-layer/linux-gpio-shim")
        ),
        format!(
            "linux-spi-shim        = {}",
            dep("swarm/signal-layer/linux-spi-shim")
        ),
        format!(
            "signal-layer-core     = {}",
            dep("sdk/signal-layer/signal-layer-core")
        ),
        format!(
            "signal-layer-types    = {}",
            with_package(
                &dep("sdk/signal-layer/signal-layer-types"),
                "myrmic-signal-layer-types"
            )
        ),
    ];
    // Only what the generated pipeline calls: `#[tokio::main]` (macros,
    // rt-multi-thread), `tokio::spawn` (rt), `tokio::time::interval` (time)
    // and `tokio::signal::ctrl_c` (signal). The runtime crates declare their own.
    lines.push(String::from(
        "tokio                 = { version = \"1\", \
         features = [\"rt-multi-thread\", \"macros\", \"signal\", \"time\"] }",
    ));
    lines.push(String::from(
        "tokio-stream          = { version = \"0.1\", features = [\"time\"] }",
    ));
    lines.push(String::from(
        "critical-section      = { version = \"1\", features = [\"std\"] }",
    ));
    lines.push(String::from(
        "log                   = { version = \"0.4\", default-features = false }",
    ));
    lines.push(String::from("env_logger            = \"0.11\""));
    // Real drivers use embassy-time async delays; on the tokio runtime the std
    // driver plus a timer queue provide the backend embedded gets from esp-rtos.
    lines.push(String::from(
        "embassy-time          = { version = \"0.5\", features = [\"std\", \"generic-queue-8\"] }",
    ));
    lines.join("\n")
}

/// Renders a [`models::CargoDep`] table with a `package = "..."` rename added.
fn with_package(dep: &models::CargoDep, package: &str) -> String {
    let rendered = dep.to_string();
    match rendered.strip_suffix(" }") {
        Some(inner) => format!("{inner}, package = \"{package}\" }}"),
        None => format!("{{ version = {rendered}, package = \"{package}\" }}"),
    }
}

/// Renders the driver/step dependency lines for a Linux pipeline: every shipped
/// module, so any pipeline built from the YAMLs compiles.
fn linux_module_deps(repo: &models::Repo) -> String {
    esp_codegen::driver_ids()
        .into_iter()
        .map(|id| {
            (
                format!("{id}-driver"),
                format!("signal-modules/drivers/{id}"),
            )
        })
        .chain(
            esp_codegen::step_ids()
                .into_iter()
                .map(|id| (id.clone(), format!("signal-modules/steps/{id}"))),
        )
        .map(|(name, path)| format!("{name} = {}", repo.clone().resolve_or_assume_correct(&path)))
        .collect::<Vec<_>>()
        .join("\n")
}

fn validate_name(name: &str) -> anyhow::Result<()> {
    if name.is_empty() {
        anyhow::bail!("<name> is empty");
    }

    let mut chars = name.chars();
    if let Some(ch) = chars.next() {
        if ch.is_ascii_digit() {
            // Technically would be caught via `is_xid_start`, but this is a pretty standard mistake to make...
            anyhow::bail!("<name> cannot start with a digit");
        }
        if !(unicode_ident::is_xid_start(ch) || ch == '_') {
            anyhow::bail!(
                "the first character in <name> must be a Unicode XID start character (most letters or `_`)"
            );
        }
    }
    for ch in chars {
        if !(unicode_ident::is_xid_continue(ch) || ch == '-') {
            anyhow::bail!(
                "<name> must be Unicode XID characters (numbers, `-`, `_`, or most letters)"
            );
        }
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use clap::Parser as _;

    #[test]
    fn pascal_case_from_id() {
        assert_eq!(pascal_case("bme280"), "Bme280");
        assert_eq!(pascal_case("moving-average"), "MovingAverage");
        assert_eq!(pascal_case("wsen_itds"), "WsenItds");
    }

    #[test]
    fn transport_parses_i2c_and_spi_only() {
        assert!("i2c".parse::<Transport>().is_ok());
        assert!("spi".parse::<Transport>().is_ok());
        assert!("uart".parse::<Transport>().is_err());
    }

    #[test]
    fn driver_requires_an_explicit_bus() {
        let cmd = New::try_parse_from(["new", "foo", "--driver=spi"]).unwrap();
        assert!(matches!(cmd.driver, Some(Transport::Spi)));
        // A bare `--driver` (no value) is rejected: the bus must be explicit.
        assert!(New::try_parse_from(["new", "foo", "--driver"]).is_err());
    }

    #[test]
    fn module_modes_conflict_with_each_other_and_project_modes() {
        assert!(New::try_parse_from(["new", "foo", "--driver=i2c", "--step"]).is_err());
        assert!(New::try_parse_from(["new", "foo", "--driver=i2c", "--firmware=esp32c6"]).is_err());
        assert!(New::try_parse_from(["new", "foo", "--step", "--pipeline"]).is_err());
    }
}
