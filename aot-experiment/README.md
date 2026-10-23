# WAMR AOT experiment (ESP32-C6)

Static comparison of what `wamrc` produces for Myrmic's embedded target against native
clang output. Nothing here ran on a board; all numbers are instruction counts from
disassembly. `./build.sh` rebuilds everything.

Tools: wamrc 2.4.4, clang/LLVM 18.1.8, wabt, myrmic 0.7.0.
Myrmic's flags (`sdk/tools/aot-compiler/src/lib.rs`):
`wamrc --xip --target=riscv32 --target-abi=ilp32 --cpu=generic-rv32 --cpu-features=+i,+m,+a,+c`

In every `.s`, `aot_func#N` is wasm function `N + <number of imports>` (kernels: 1 import,
counter: 6). `aot_func#N` is the native-stack-check wrapper; `aot_func_internal#N` the body.

## kernels/ — hand-written C

| File | What |
|---|---|
| `k.c` | Test functions: `sum`, `scale` (memory loops), `toggle` (host call in a loop), `mix`/`fmix` (i64 div, float), `fib` (recursion), `sumsq` (small calls) |
| `k.wasm`, `k.wat` | Compiled to wasm MVP with Myrmic's linker memory flags |
| `k_native.o/.s` | Same C, native `rv32imac -O2`: the baseline |
| `k_xip.o/.s` | Myrmic's exact flags (same as `v_myrmic_xip`) |
| `k_noxip.o/.s` | Without `--xip` |
| `k_xip_nobc.o/.s` | `--bounds-checks=0` (also drops the stack-check wrapper) |
| `v_xip_unaligned.o/.s` | `+unaligned-scalar-mem`: byte-split loads/stores disappear |
| `v_*` | Other flag variants (see `build.sh`) |
| `k.aot` | Deployable AOT file; `k.su` per-function stack usage |

Instructions per loop iteration:

| | native | Myrmic flags | + unaligned |
|---|---|---|---|
| `sum` | 4 | 18 | 9 |
| `scale` | 6 | ~32 | ~15 |

What to look for in `k_xip.s`:
- `lbu`×4 + shifts per `i32.load`, `sb`×4 per store (WAMR passes align=1 unless the address is constant).
- Constants loaded from a table, e.g. `lw s0, 0x24(a1)` for `+1` (XIP `I32_CONST` intrinsic).
- Two `bltu` per memory access (software bounds checks).
- `toggle`: args packed byte-wise into a buffer, then `jalr` into the generic `aot_invoke_native`.
- `fib`: calls go through a function table and the stack-check wrapper, plus an exception check after each.

## counter/ — the quickstart cell, real pipeline

| File | What |
|---|---|
| `cell-src/` | Copy of `~/myrmic-quickstart/counter` |
| `counter.wasm`, `counter.wat` | Output of `myrmic build --platform esp32c6` (15.9k lines of WAT) |
| `counter.aot`, `counter.meta` | The exact artifacts that get deployed |
| `inc.wat` / `inc_short.wat` | `command_increment` alone; `_short` has the mangled names shortened |
| `c_xip.o/.s` | Same module, Myrmic flags, as ELF (`command_increment` = `aot_func_internal#61`) |
| `c_unal.o/.s` | With `+unaligned-scalar-mem` |
| `c.su` | Stack usage per function |

Findings:
- `command_increment` body: 1104 instructions (836 with unaligned); whole module 39,182 (30,066).
- Every `i64.shl`/`i64.shr` is an indirect call to a WAMR runtime helper (slots `0x118`/`0x120`:
  96 and 88 calls, matching 96 `i64.shl` and 88 `i64.shr` in the WAT). Source: riscv32 XIP
  intrinsics in WAMR `aot_intrinsic.c:624`.
- Every `#[cmd]` starts by byte-swapping the cell ID and sender ID (`Uuid::from_u64_pair`), so it
  pays ~32 of those helper calls before user code runs.
- Linear memory is 2 pages (128 KB): `whole_pages()` in `swarm/myrmic-build/src/compile.rs` takes
  heap + stack (32 + 32 KB) and adds one more page for static data. The module needs 90,637 bytes.

## Open questions (need a board)

- Does the ESP32-C6 handle misaligned loads in hardware? Required before `+unaligned-scalar-mem` is safe.
- Real cost per host call and per timer tick (runtime path: thread handoffs, 100 Hz RTOS tick), compared with the codegen overhead above.

## encoding/ — what the reply format costs

`encoding/build.sh` builds the counter four times, changing only how `count` encodes its reply
(same flags as `myrmic build`; the `json_value` build is byte-identical to `counter/counter.wasm`).
Each variant folder holds the patched `src/`, `counter.wasm/.wat/.aot` and a linker map.

| variant | reply type | wasm | data | aot |
|---|---|---|---|---|
| `json_value` | `Callback<JsonValue>` (original) | 73,171 | 24,890 | 152,182 |
| `json_i32` | `Callback<i32>` (still JSON text, `5`) | 47,265 | 7,309 | 115,694 |
| `postcard` | `Callback<Count>`, `#[codec(Postcard)]` | 45,839 | 6,893 | 112,050 |
| `raw_bytes` | `Callback<Bytes>`, 4 bytes little-endian | 45,623 | 6,893 | 112,154 |

The cost was `serde_json::Value` (any JSON value: floats, maps, strings), not JSON itself.

## bulk/ — wasm bulk memory vs software copies

The C5/C6/C61 are `riscv32imac` (esp-metadata `soc.toml`): no copy instruction (that would need the
V extension). Their mask ROM does have `memset`/`memcpy`/`memmove` (esp-rom-sys `rom/additional.ld`),
and their GDMA channels support memory-to-memory transfers.

What `wamrc --xip` makes of each kind of copy (`bulk/build.sh`, `bulk/copy.c`):

| copy | instructions |
|---|---|
| `memory.copy` (bulk memory) | ~25 fixed (range checks on both ends), then a jump to the firmware's native `memmove` |
| software word loop through wamrc | ~23 per 4-byte word (byte-split loads/stores, 4 bounds checks) |
| the counter's actual `memcpy` (Rust's, compiled to wasm) | ~13 per byte (`counter/memcpy_aot.s`) |
| same word loop, native clang | 6 per 4-byte word |

`encoding/bulk_i32` = `json_i32` built with `-C target-feature=+bulk-memory`: all 13 calls to
`memcpy`/`memmove`/`memset` become `memory.copy`/`memory.fill`, the software functions disappear,
wasm 47,265 → 46,094 bytes, `wamrc` accepts it. Only `bulk-memory` is added to `target_features`;
the data segment stays active. Not yet run on a board.

## On the board (M5 NanoC6, ESP32-C6 rev v0.2, 4 MB flash) — 2026-10-23

Firmware: `firmware/` (plain `myrmic new --firmware=esp32c6`), flashed with
`source .wifi.env && myrmic flash firmware`. Laptop runtime: `myrmic runtimes start -d -n dev --tmp`.
Board and laptop must be on the same network (multicast discovery).

Both `encoding/json_i32` and `encoding/bulk_i32` deployed, loaded in WAMR and handled
`increment` ×2 + `count` correctly (`Incremented count to 1`, `2`, `Count is 2`). So the
bulk-memory build works on the device. Correctness only; nothing timed yet.

Deploying a prebuilt `.wasm` does not AOT-compile it (`--platform` only applies to crate builds),
so the AOT pair is registered on the class first:

```sh
./target/release/aot-compiler <variant>/counter.wasm -t esp32c6 -o <variant>/   # from the repo root
myrmic cells classes add <name> --wasm <variant>/counter.wasm
myrmic cells classes add <name> --aot <variant>/counter.aot --meta <variant>/counter.meta --platform riscv32imac
myrmic deploy <variant>/counter.wasm --name <name> --tag esp32c6 --timeout 90s
```

Opening the serial port resets the chip (`rst:0x15 USB_UART_HPSYS`), even with `--before no-reset-no-sync`,
which drops the deployed cell. Attach `myrmic monitor` first, wait for `Registering exec runtime`, then deploy.
