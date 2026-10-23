# Bench results: M5 NanoC6 (ESP32-C6 rev v0.2), 2026-10-23

CPU at 80 MHz (esp-hal default; Myrmic calls `esp_hal::init(Config::default())`).
Cell: `bench/cell` built with `myrmic build` flags (opt-level=z), AOT by Myrmic's aot-compiler.
Native: same loops (`bench/kernels`, opt-level z) run by the firmware at boot.
Raw logs: `board.log` (100 Hz RTOS tick), `board-tick1000.log` (1000 Hz).
All runs produced the same checksum (`sink 8156879420830493079`).

| Test | Native | AOT, MVP | AOT, bulk memory | AOT ÷ native |
|---|---|---|---|---|
| sum | 63 ns/word | 354 | 316 | 5.6× |
| scale | 100 ns/word | 453 | 465 | 4.5× |
| copy 4 KB (`copy_from_slice`) | 8,930 ns/KB | 75,300 | 98,910 | 8.4× / 11.1× |
| xorshift64 (64-bit shifts) | 264 ns/iter | 1,301 | 1,300 | 4.9× |
| clock read | 1,143 ns (`Instant::now`) | 30,900–33,400 (`uptime()`) | 33,355 | ~28× |

Native ROM routines, same 4 KB: `memcpy` 8,785 ns/KB, `memmove` 89,735 ns/KB (10× slower).
`memory.copy` in a cell lands on `memmove`, which is why the bulk build copies slower.

Host calls from a cell (MVP build):

| Call | Cost |
|---|---|
| `tap::list_len` (answered on the WAMR thread) | 4.8 µs |
| `Gpio9::try_get` (handoff to the main executor and back) | 67 µs |
| `State::load` (handoff + database round trip over WiFi) | 23–25.6 ms |

Interval timer: ~58 handled ticks/s (one per ~17 ms) whether the period is 1 ms or 10 ms, and
whether the RTOS tick is 100 Hz or 1000 Hz. Excess ticks are dropped (`send_tick`). Not the
scheduler tick and not the database commit (an empty commit is free); cause not yet found.

## The 17 ms per tick (found and fixed)

Timestamps along the tick path (`runtime-probe-and-pump-fix.patch`, applied to a worktree of the
pinned commit 394b373b at `../myrmic-394b373b`, wired in through `[patch]` in
`firmware/Cargo.toml`). Logs: `board-probe.log` (before the fix), `board-probe-fix.log` (after).

Each tick makes 6 handoffs from the WAMR thread to the main executor (GetSri ×3,
StoreArguments, DB Open, DB Commit) plus the wasm call. While ticks back up, each handoff
waited ~2 ms before the executor even started it:

| per tick, avg | backed up (1 ms / 10 ms) | no backlog (50 ms) | after fix, 1 ms period |
|---|---|---|---|
| dispatch, per handoff | 2.0 ms | 36 µs | 35 µs |
| cell_pump blocked | 17 ms | 36 µs | (awaits, not blocking) |
| whole tick | 17 ms | 4.8 ms | 5.2 ms |
| handled ticks/s | 58 | 20 (all) | **173** |

Cause: `cell_pump` (wasm-runtime `service.rs`) forwards messages into the WAMR thread's
1-slot RTOS queue with a *blocking* `send_to_back(.., Some(1_000))` in a retry loop. It runs on
the same executor as `request_handler`, which serves the cell's host calls. Once the queue is
full (any backlog), the executor spends nearly all its time blocked in that call, so every
handoff stalls, which keeps the backlog full.

Fix: non-blocking `send_to_back(.., Some(0))`; when full, await a `Signal` the WAMR thread
raises after each receive (with a 100 ms timeout to re-check termination).

After the fix, 10 ms period: 100 ticks/s, 0 dropped. 1 ms period: 173 ticks/s, now bounded by
the real per-tick cost (~5 ms), of which DB Open ≈ 1.5 ms and DB Commit ≈ 1.55 ms dominate
(the wasm call itself is 0.73 ms). Bench numbers unchanged (same checksum).

## +unaligned-scalar-mem (2026-10-23)

WAMR emits every non-atomic load/store with alignment 1 (`aot_emit_memory.c`: the wasm `align`
hint only reaches the atomic path), and without an unaligned-access CPU feature LLVM splits
each one into byte accesses. The C6 does misaligned `lw` in hardware (native test in
`firmware/src/main.rs`, log `board-misaligned.log`): aligned 125 ns, misaligned 147 ns, no trap;
the byte-split sequence is 240 ns.

Variant `out/unal`: the identical MVP wasm, AOT-compiled with
`--cpu-features=+i,+m,+a,+c,+unaligned-scalar-mem` (`unaligned-wamrc/wamrc` wrapper on PATH).

| Test | Native | AOT today | AOT +unaligned | ÷ native, before → after |
|---|---|---|---|---|
| sum | 63 ns/word | 354 | 192 | 5.6× → 3.0× |
| scale | 100 ns/word | 453 | 264 | 4.5× → 2.6× |
| copy 4 KB | 8,930 ns/KB | 75,300–77,800 | 55,630 | 8.4× → 6.2× |
| xorshift64 | 264 ns/iter | 1,300 | 1,295 | 4.9× (no memory access) |
| host calls | | unchanged | unchanged | |

AOT size 210,924 → 165,336 bytes (−22%). Same checksum. Verified on the C6 only.
