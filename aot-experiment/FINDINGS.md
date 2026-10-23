# Myrmic on ESP32: performance findings

Measured on an M5 NanoC6 (ESP32-C6 rev v0.2, 80 MHz, the esp-hal default clock), 2026-10-23.
Cells built with `myrmic build`'s flags (`opt-level=z`, LTO) and AOT-compiled by Myrmic's own
aot-compiler (`wamrc` 2.4.4, XIP). The native baseline is the same Rust source compiled into the
firmware at the same optimization level. Every run produced the same checksum.

Raw data: `bench/results/` (logs and `summary.md`). Bench cell: `bench/cell`; shared loops:
`bench/kernels`; firmware with the native baseline: `firmware/`.

## Summary

| # | Finding | Impact | Status |
|---|---|---|---|
| 1 | `cell_pump` blocks the main executor while the cell's queue is full | timer ticks capped at 58/s (17 ms each) | **fixed** in the working tree, measured |
| 2 | WAMR compiles every wasm load/store byte by byte | compute 4.5–5.6× slower than native | **flag enabled for the C6** in the aot-compiler, measured; C5/C61 TODO |
| 3 | `memory.copy` lands on the ROM `memmove`, 10× slower than `memcpy` | bulk-memory builds copy *slower* than MVP; replacing `memmove`: cell copies 98,910 → 10,260 ns/KB | tried |
| 4 | Remaining codegen overhead: bounds checks, XIP constant tables, call wrappers, 64-bit shift helpers | the ~2.6–3× left after #2 | partly addressed by #10 |
| 5 | Host call `uptime()` costs 31–36 µs although answered on the cell's own thread | ~30× a native clock read | **explained**; 36 → 13 µs with #9 + #10 |
| 6 | `serde_json::Value` in a cell pulls in a 17 KB float table | counter wasm 73 KB instead of 47 KB | known, SDK-level |
| 7 | Every tick pays ~3 ms for an empty DB `Open` + `Commit` handoff | the ~5 ms per-tick floor after #1 | measured, not pursued |
| 8 | An unconsumed timer-cancel error leaks into the next cell's deploy | deploy fails with `timer not found` | bug, not fixed |
| 9 | wamrc doesn't know the firmware's host-function signatures, so every host call takes WAMR's generic `aot_invoke_native` path | ~3–5 µs extra per host call | **opt-in in the working tree** (`MYRMIC_AOT_HOST_SIGNATURES=1`), measured; load-time verification still open |
| 10 | Cells are built with `opt-level=z`, which inlines little; in AOT every remaining call pays a wrapper + table jump | call-heavy code (decoding, serde) 12–14× native | measured: `opt-level=s` is faster **and smaller** |

## 1. Timer ticks capped at 58/s — fixed

**Symptom.** An interval timer delivered ~58 ticks/s (one per ~17 ms) whether its period was
1 ms or 10 ms, and whether the RTOS tick was 100 Hz or 1000 Hz. Extra ticks were dropped.

**Cause.** Each tick makes 6 handoffs from the WAMR thread to the main executor (`GetSri` ×3,
`StoreArguments`, DB `Open`, DB `Commit`). `cell_pump` (`wasm-runtime/src/service.rs`), which
feeds the cell's one-slot RTOS queue, runs on that same executor and used a *blocking*
`send_to_back(.., Some(1_000))` in a retry loop. Once ticks backed up, the executor spent almost
all its time blocked inside that call, so every handoff waited ~2 ms before being served. Slow
handoffs kept the queue full, which kept the handoffs slow.

| per tick, average | backed up (before) | after the fix |
|---|---|---|
| wait before a handoff is served | 2.0 ms | 35 µs |
| whole tick | 17 ms | ~5 ms |
| ticks/s at a 10 ms period | 58 | **100 (none dropped)** |
| ticks/s at a 1 ms period | 58 | **173** |

**Fix.** Try the queue without blocking (`Some(0)`); when it is full, *await* a signal that the
WAMR thread raises each time it takes a message (100 ms timeout to re-check teardown).
In the working tree: `embedded/esp-hal/crates/wasm-runtime/src/service.rs`.

## 2. Byte-by-byte loads and stores — flag added

**Cause.** A wasm load carries an alignment *hint*, but the spec only treats it as a hint: a
misaligned access must still work. So WAMR gives every non-atomic load/store alignment 1
(`aot_emit_memory.c`; the hint only reaches the atomic path). RISC-V allows CPUs to trap on
misaligned access, so without being told otherwise LLVM splits each 32-bit access into 4 byte
accesses plus shifts and ORs.

**The C6 handles misaligned access in hardware** (native test on the board):

| 1000 loads | ns/load |
|---|---|
| `lw`, aligned | 125 |
| `lw`, misaligned | 147 (no trap) |
| byte-split sequence (what WAMR emits) | 240 |

**Change.** Add `+unaligned-scalar-mem` to the wamrc CPU features for the ESP32-C6
(`sdk/tools/aot-compiler/src/lib.rs`; the C5 and C61 keep the old features). Same wasm,
measured on the board:

| Test | Native | AOT before | AOT after | ÷ native, before → after |
|---|---|---|---|---|
| sum | 63 ns/word | 354 | 192 | 5.6× → **3.0×** |
| scale | 100 ns/word | 453 | 264 | 4.5× → **2.6×** |
| copy 4 KB | 8,930 ns/KB | ~76,000 | 55,630 | 8.4× → **6.2×** |
| 64-bit shifts | 264 ns/iter | 1,300 | 1,295 | 4.9× (no memory access) |

AOT size 210,924 → 165,336 bytes (−22%). On the counter cell: 39,182 → 30,066 instructions,
byte loads 3,052 → 531, byte stores 2,725 → 179.

Misaligned stores work too (native `sw` test on the C6: 113 ns aligned, 137 ns misaligned, no
trap, correct bytes; log `board-misaligned-store.log`).

**TODO.** Enable it for the C5 and C61 once each passes the same misaligned `lw`/`sw` test,
including linear memory placed in PSRAM (where `esp-heap` puts general allocations on those
chips). Their TRMs point to hardware support: the HP CPU's exception codes include no
load-misaligned cause, mcause 6 is raised only for misaligned atomics (LR/SC/AMO), and the
bus-error section mentions "misaligned accesses which are split into multiple loads/stores".
Nothing is documented for PSRAM. Until then they keep byte-by-byte access.

## 3. Bulk memory makes copies slower

With `+bulk-memory`, `copy_from_slice` becomes one `memory.copy`, which WAMR (XIP) lowers to a
call to the firmware's `memmove`. On the C6 that is a ROM routine, and it is slow:

| native, 4 KB | ns/KB |
|---|---|
| ROM `memcpy` | 8,785 |
| ROM `memmove` | 89,735 |

So a bulk-memory build copies at 98,910 ns/KB vs 75,300 for MVP.

**Tried (experiment firmware, C6).** Replace the firmware's `memmove` with one that calls the
ROM `memcpy` when the buffers don't overlap, and for overlapping buffers copies in non-overlapping
chunks of the gap between them (ROM `memmove` only when the gap is under 16 bytes). esp-rom-sys
assigns `memmove` to the ROM address in a linker script (`rom/additional.ld`, a hard assignment,
not `PROVIDE`), so `--wrap=memmove` does not work (lld mixed up the symbols and the call went to
address 0). A second linker script that reassigns `memmove = firmware_memmove;` does work
(`firmware/memmove.x`, `firmware/build.rs`). Log: `bench/results/board-memmove.log`.

| 4 KB copy | ns/KB |
|---|---|
| native ROM `memmove` | 89,740 |
| native `memmove`, replaced | 8,940 |
| native overlapping, 64 B apart (chunked) | 21,310 |
| native overlapping, 1 B apart (ROM fallback) | 89,880 |
| cell, MVP + unaligned (today's default build on the C6) | 55,620 |
| cell, bulk memory, ROM `memmove` | 98,910 |
| **cell, bulk memory, replaced `memmove`** | **10,260** |

An overlap correctness check (both directions) passes.

**Catch.** Cells are built for `wasm32v1-none` (MVP), so today's cells contain no `memory.copy`
and gain nothing from this alone; they also need `+bulk-memory` (`swarm/myrmic-build`). The order
matters: a bulk-memory cell on a firmware without the replacement copies *slower* than MVP. The
replacement also speeds up every `ptr::copy` / `copy_within` in the firmware's own Rust code.
Not checked: ROM `memmove` speed on the C5/C61 (`memmove` is at `0x400004c0` there), ROM `memset`
(`memory.fill`).

## 4. Remaining codegen overhead (after #2: ~2.6–3×)

Seen in the disassembly of the counter cell (`counter/c_xip.s`):

- **Software bounds check on every memory access** (no MMU; `HW_BOUND_CHECK` off). Disabling it
  would break the sandbox; the realistic route is fewer checks (hoisting out of loops).
- **XIP constant tables**: i32 constants are loaded from a table instead of encoded inline,
  because XIP code must not need relocations.
- **Every wasm→wasm call** goes through a stack-check wrapper plus an indirect call;
  `opt-level=z` inlines little, so there are many such calls.
- **64-bit shifts become runtime helper calls** on riscv32 in XIP mode (`aot_intrinsic.c`),
  which is why the shifts test did not move with #2.
- **Host calls** go through WAMR's generic `aot_invoke_native`.

## 5. Host call costs, and where `uptime()` goes

| from a cell (opt-level z, MVP) | cost |
|---|---|
| `tap::list_len` (answered on the WAMR thread) | 4.8–7.4 µs |
| `uptime()` (also answered on the WAMR thread) | 31–36 µs, vs 1.1 µs native |
| `gpio::try_get` (handoff to the main executor) | 67–75 µs |
| `State::load` (handoff + DB round trip over WiFi) | ~25 ms |

`uptime()` split into layers (`clock` command in the bench cell; native side in `firmware/`):

| layer | cell, MVP | natively |
|---|---|---|
| postcard decode of the returned `Duration`, in the cell | 20.2 µs | 1.4 µs |
| host's own work (`Instant::now` + postcard encode) | ≈5.4 µs | 5.4 µs |
| crossing into the host and back | ≈8–10 µs | — |
| **total** | **36.5 µs** | ~1.1 µs (`Instant::now`) |

The decode is a function call per byte (`pop`) plus a runtime helper per 64-bit shift; in AOT each
call costs a ~18-instruction stack-check wrapper plus a table jump, and each memory access two
bounds-check branches (see #10). The host side is slow too for a clock read; likely the software
64-bit division in `Duration::from_micros` (unconfirmed).

**Idea.** Return fixed-size values like the uptime as a plain `i64` result instead of a buffer
plus postcard: no encode, no decode, no pointer check. The same buffer-plus-postcard pattern
likely appears in other host functions.

## 6. Wasm size

The counter example's wasm is 73,171 bytes; 17 KB of it is a float-formatting table pulled in by
`serde_json::Value` (`Callback<JsonValue>`). With `Callback<i32>` it is 47,265 bytes. Postcard or
raw bytes save only a little beyond that. Size matters twice: flash for the AOT, and XIP cache
misses at run time.

## 7. Per-tick floor after #1

About 5 ms per tick remain. The wasm call itself is ~0.7 ms. DB `Open` (~1.5 ms) and `Commit`
(~1.55 ms) dominate even when the handler touches no data: both are free inside the DB client
(`Application::commit` returns immediately when empty), so the cost is the trip to the
cell-db-service task and back. Irrelevant for typical cells (ticks every 0.5–5 s); it matters
only for fast loops, which belong in the Signal Layer.

## 8. Bug: timer-cancel error leaks into the next deploy

A failed `CancelTimer` leaves its message in `ctx.cell.error_msg`
(`wasm-runtime/src/async_request/cell_host.rs`). If the cell never reads it, the next cell's
deploy picks it up and fails with `timer not found`. Retrying the deploy succeeds.

## 9. Host calls take the generic path

wamrc can only emit a direct call to a host function if it knows the function's signature
(`"(*~)i"` etc.) at compile time, and it only knows signatures of natives registered *inside
wamrc*. Myrmic's are registered in the firmware only, so every import compiles to the generic
path: arguments stored to an array, an indirect call to `aot_invoke_native`
(`aot_runtime.c`), which re-parses the signature string, validates each pointer with a function
call, and calls through an assembly trampoline (`wasm_runtime_invoke_native`).

wamrc's `--native-lib=<lib>` loads a shared library that lists module, names and signatures;
with it, imports compile to direct calls with the pointer check inlined. Experiment:
`bench/native-libs/{time,tap}.c` (signatures copied from `wasm-runtime/src/imports/`), variant
`nat` in `bench/build.sh`. Same boot, 1000 calls:

| | unaligned build | + signatures |
|---|---|---|
| `tap::list_len` | 7.3 µs | **2.0 µs** |
| raw `uptime_host` | 13.7 µs | 8.7–10.7 µs |
| `uptime()` | 31.8 µs | 26.5–26.9 µs |

**Caution.** The `.aot` file does not record the signatures, and the firmware's loader never
checks them (`aot_loader.c` reads only names and types). If wamrc assumed a parameter is a plain
`i32` and the firmware treats it as a pointer (or the reverse), the host dereferences an
unchecked address: a sandbox escape. The list given to wamrc must be generated from the same
source as the firmware's `host_function_decl!` lists, and should be verified at load (e.g. a hash
of the signature table in the `.meta`).

**Implemented (opt-in, nothing changes by default):**

- `embedded/esp-hal/crates/host-abi`: the table of every host module, function and signature
  (generated once from the 61 `host_function_decl!` calls), plus `const fn` lookups and tests
  (unique names, well-formed signatures).
- `host_function_decl!` (wasm-runtime `macros.rs`) asserts at compile time that its name and
  signature match the table. No call site changed and the firmware binary is unaffected; a
  mismatch is a build error naming the function. Checked for C6, C5 (with BLE) and the selftest
  feature.
- aot-compiler: with `MYRMIC_AOT_HOST_SIGNATURES=1` it generates one tiny C library per module
  the cell imports (wamrc takes at most 8; extra modules keep the generic path), builds them with
  `$CC`/`cc` into a cache directory keyed by the generated sources, and passes them to wamrc.
  Without the variable its output is byte-identical to before.
- On the board: `tap::list_len` 2.0–2.3 µs and raw `uptime_host` 8.7 µs with the repo's
  aot-compiler, the same as the hand-written libraries; correct checksum.

Still open: the firmware cannot tell what signatures an AOT was compiled with. The table plus
the compile-time check rule out drift *within one source tree*; a cell compiled by one version
and run on a firmware of another is only safe while their tables agree, which is why it is
opt-in.

## 10. `opt-level=z` works against AOT

`myrmic build` compiles cells with `-C opt-level=z`, which inlines very little. Natively small
helper calls are cheap; in AOT (XIP) each call costs a stack-check wrapper (~18 instructions)
plus a jump through the function table, so call-heavy code (decoders, serde, iterators) suffers
far more than plain loops. Variants `nat-s` / `nat-3` (variant `nat`, cell Rust code at
`opt-level=s` / `3`), same boot:

| | z | s | 3 | native (z) |
|---|---|---|---|---|
| postcard decode of a `Duration` | 16.5 µs | 6.3 µs | **3.5 µs** | 1.4 µs |
| `uptime()` | 26.5 µs | 16.2 µs | **13.3 µs** | 1.1 µs |
| `tap::list_len` | 2.0 µs | 1.9 µs | 1.0 µs | |
| sum | 190 ns/word | 147 | **108** | 63 |
| scale | 264 ns/word | 267 | 258 | 100 |
| bench AOT size | 169,358 | **159,526** | 169,814 | |
| counter AOT size | 120,490 | **114,074** | 119,348 | |

`opt-level=s` is both faster and *smaller* than `z` on both cells: every function kept out of line
costs a wrapper and a table entry in the AOT. `3` is fastest at about `z`'s size. The native
baseline stayed at `z`, so the ratios to native are a little flattering for `s`/`3`.

**Change to consider:** `opt-level=s` in `swarm/myrmic-build/src/compile.rs` (cell rustflags).

**Overall, `uptime()`:** 36.5 µs (today) → 31.8 (+unaligned) → 26.5 (+signatures) → 16.2
(+`opt-level=s`) → 13.3 µs (+`opt-level=3`).

## How to reproduce

- Flash: `source .wifi.env && myrmic flash firmware --monitor` (`myrmic flash` supplies the
  linker flags; plain `cargo build` fails to link).
- Bench variants: `bench/build.sh` builds `out/{mvp,bulk,unal,nat,nat-s,nat-3}`; deploy with
  `myrmic cells classes add` (wasm, then aot/meta with `--platform riscv32imac`) and
  `myrmic deploy ... --tag esp32c6`, then `myrmic send <cell> bench | tick_start <µs> | tick_report`.
- Tick-path timing: `bench/results/runtime-probe-and-pump-fix.patch`.
