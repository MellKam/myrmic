//! Benchmark cell. `bench` times each layer with `uptime()` (1 µs resolution on the
//! ESP32) and logs one `BENCH` line per test; `tick_start` / `tick_report` measure how
//! many interval-timer ticks actually reach a handler.
#![no_std]

use core::hint::black_box;
use core::time::Duration;

use bench_kernels as k;
use myrmic_sdk::db::state::State;
use myrmic_sdk::{Callback, InMemory, Metadata, TimerHandle};

static WORDS: InMemory<[u32; k::WORDS]> = InMemory::new([0; k::WORDS]);
static COPY: InMemory<([u8; k::COPY_BYTES], [u8; k::COPY_BYTES])> =
    InMemory::new(([7; k::COPY_BYTES], [0; k::COPY_BYTES]));

const PROBE: State<u32> = State::new_const("bench-probe");

fn now_us() -> u64 {
    myrmic_sdk::uptime().map_or(0, |d| d.as_micros() as u64)
}

/// Logs `ops` operations taking `us` microseconds, as nanoseconds per operation.
fn report(name: &str, ops: u64, unit: &str, us: u64) {
    let ns = us * 1000 / ops.max(1);
    let _ = myrmic_sdk::info!("BENCH {name}: {ops} {unit} in {us} us = {ns} ns/{unit}").ok();
}

/// Runs `f` and returns the elapsed microseconds.
fn timed(f: impl FnOnce()) -> u64 {
    let t0 = now_us();
    f();
    now_us() - t0
}

#[myrmic_sdk::cmd]
fn bench(_md: Metadata) -> myrmic_sdk::Result {
    let mut sink = 0u64;

    // The clock itself, which is also the cheapest host call: answered on the WAMR thread.
    let us = timed(|| {
        for _ in 0..1000 {
            black_box(now_us());
        }
    });
    report("uptime (direct host call)", 1000, "call", us);

    WORDS.with(|w| k::fill(w))?;
    let us = timed(|| {
        let _ = WORDS.with(|w| {
            for _ in 0..20 {
                sink ^= u64::from(k::sum(w));
            }
        });
    });
    report("sum", 20 * k::WORDS as u64, "word", us);

    let us = timed(|| {
        let _ = WORDS.with(|w| {
            for _ in 0..20 {
                k::scale(w, 3);
            }
        });
    });
    report("scale", 20 * k::WORDS as u64, "word", us);

    let us = timed(|| {
        let _ = COPY.with(|(src, dst)| {
            for _ in 0..50 {
                k::copy(dst, src);
            }
        });
    });
    report("copy 4 KB", 50 * k::COPY_BYTES as u64 / 1024, "KB", us);

    let us = timed(|| sink ^= k::xorshift64(sink, k::XORSHIFT_ITERS));
    report("xorshift64", u64::from(k::XORSHIFT_ITERS), "iter", us);

    // Host calls. tap::list_len reads the tap registry directly; Gpio9::try_get goes
    // through send_request_and_wait to the main executor and back.
    let us = timed(|| {
        for _ in 0..200 {
            black_box(myrmic_sdk::tap::list_len().ok());
        }
    });
    report("tap::list_len (no handoff)", 200, "call", us);

    let us = timed(|| {
        for _ in 0..200 {
            black_box(myrmic_sdk::gpio::Gpio9::try_get().is_some());
        }
    });
    report("gpio try_get (handoff)", 200, "call", us);

    // A database read: handoff plus a round trip to the swarm's database.
    let us = timed(|| {
        for _ in 0..10 {
            black_box(PROBE.load().ok());
        }
    });
    report("State::load (db)", 10, "call", us);

    let _ = myrmic_sdk::info!("BENCH done (sink {sink})").ok();
    Ok(())
}

/// (ticks seen, first tick µs, last tick µs)
static TICKS: InMemory<(u64, u64, u64)> = InMemory::new((0, 0, 0));
static TIMER: InMemory<Option<TimerHandle>> = InMemory::empty();

/// Starts an interval timer: `period_us` (default 1000), 2000 ticks.
#[myrmic_sdk::cmd]
fn tick_start(_md: Metadata, period_us: Option<u32>) -> myrmic_sdk::Result {
    let period = u64::from(period_us.unwrap_or(1000));
    TICKS.with(|t| *t = (0, 0, 0))?;
    let handle = myrmic_sdk::interval(Callback::of::<on_tick>(), Duration::from_micros(period))
        .count(2000)
        .build()
        .map_err(|_| "unable to start timer")?;
    TIMER.with(|slot| *slot = Some(handle))?;
    let _ = myrmic_sdk::info!("BENCH ticks: started, period {period} us, 2000 ticks").ok();
    Ok(())
}

#[myrmic_sdk::cmd]
fn on_tick(_md: Metadata) -> myrmic_sdk::Result {
    let now = now_us();
    TICKS.with(|t| {
        if t.0 == 0 {
            t.1 = now;
        }
        t.0 += 1;
        t.2 = now;
    })?;
    Ok(())
}

#[myrmic_sdk::cmd]
fn tick_report(_md: Metadata) -> myrmic_sdk::Result {
    if let Some(handle) = TIMER.with(Option::take)? {
        let _ = handle.cancel();
    }
    let (n, first, last) = TICKS.with(|t| *t)?;
    let span = last.saturating_sub(first);
    let gap = if n > 1 { span / (n - 1) } else { 0 };
    let rate = if span > 0 { (n - 1) * 1_000_000 / span } else { 0 };
    let _ = myrmic_sdk::info!("BENCH ticks: {n} handled, {span} us from first to last, mean gap {gap} us = {rate} ticks/s").ok();
    Ok(())
}

/// The raw `uptime()` import, so `clock` can time the host call without the SDK's decode.
mod raw {
    #[link(wasm_import_module = "time")]
    unsafe extern "C" {
        pub fn uptime_host(buffer: *mut u8, length: i32) -> i32;
    }
}

/// Splits the 31 µs of an `uptime()` call into its layers, 1000 calls each.
#[myrmic_sdk::cmd]
fn clock(_md: Metadata) -> myrmic_sdk::Result {
    const N: u64 = 1000;
    let mut buf = [0u8; 16];

    let us = timed(|| {
        for _ in 0..N {
            black_box(myrmic_sdk::tap::list_len().ok());
        }
    });
    report("clock: tap::list_len (reference)", N, "call", us);

    let us = timed(|| {
        for _ in 0..N {
            // SAFETY: buf is 16 writable bytes of linear memory; a Duration encodes in at most 15.
            black_box(unsafe { raw::uptime_host(black_box(buf.as_mut_ptr()), 16) });
        }
    });
    report("clock: raw uptime_host import", N, "call", us);

    // SAFETY: as above.
    let n = unsafe { raw::uptime_host(buf.as_mut_ptr(), 16) }.max(0) as usize;
    let us = timed(|| {
        for _ in 0..N {
            black_box(postcard::from_bytes::<Duration>(black_box(&buf[..n])).ok());
        }
    });
    report("clock: postcard decode of the Duration", N, "call", us);

    let us = timed(|| {
        for _ in 0..N {
            black_box(myrmic_sdk::uptime().ok());
        }
    });
    report("clock: myrmic_sdk::uptime()", N, "call", us);

    let d = myrmic_sdk::uptime().unwrap_or_default();
    let us = timed(|| {
        for _ in 0..N {
            black_box(black_box(d).as_micros() as u64);
        }
    });
    report("clock: Duration::as_micros() as u64 (u128 math)", N, "call", us);

    let us = timed(|| {
        for _ in 0..N {
            let d = black_box(d);
            black_box(d.as_secs() * 1_000_000 + u64::from(d.subsec_micros()));
        }
    });
    report("clock: as_secs*1e6 + subsec_micros (u64 math)", N, "call", us);

    let _ = myrmic_sdk::info!("BENCH clock done").ok();
    Ok(())
}
