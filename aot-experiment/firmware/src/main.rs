//! The stock firmware, plus a native baseline for the bench cell: at boot it runs the
//! same loops (`bench-kernels`) compiled natively and logs `NATIVE` lines.
//!
//! Joins the swarm and hosts a WASM cell.

#![no_std]
#![no_main]

extern crate alloc;

use alloc::vec;
use core::hint::black_box;

use bench_kernels as k;
use esp_firmware::embassy_time::Instant;

#[esp_firmware::main]
async fn setup() {
    native_bench();
}

unsafe extern "C" {
    fn memcpy(dst: *mut u8, src: *const u8, n: usize) -> *mut u8;
    /// The original ROM `memmove` (memmove.x), kept for the comparison below.
    fn rom_memmove(dst: *mut u8, src: *const u8, n: usize) -> *mut u8;
}

/// The firmware's `memmove` (memmove.x points the symbol here). The ROM `memmove` is ~10x
/// slower than the ROM `memcpy`, so non-overlapping copies (the common case) go to `memcpy`;
/// overlapping ones copy in chunks no longer than the distance between the buffers, each of
/// which is itself non-overlapping, and fall back to the ROM for very short distances.
#[unsafe(no_mangle)]
unsafe extern "C" fn firmware_memmove(dst: *mut u8, src: *const u8, n: usize) -> *mut u8 {
    let (d, s) = (dst as usize, src as usize);
    let gap = d.abs_diff(s);
    // SAFETY (all branches): the caller's memmove contract; every memcpy below copies between
    // ranges at most `gap` bytes long that start `gap` apart, so they never overlap.
    unsafe {
        if gap >= n {
            memcpy(dst, src, n);
        } else if gap < 16 {
            rom_memmove(dst, src, n);
        } else if d < s {
            // Copying down: walk forward.
            let mut i = 0;
            while i < n {
                let len = gap.min(n - i);
                memcpy(dst.add(i), src.add(i), len);
                i += len;
            }
        } else {
            // Copying up: walk backward.
            let mut end = n;
            while end > 0 {
                let len = gap.min(end);
                memcpy(dst.add(end - len), src.add(end - len), len);
                end -= len;
            }
        }
    }
    dst
}

fn report(name: &str, ops: u64, unit: &str, us: u64) {
    let ns = us * 1000 / ops.max(1);
    esp_firmware::log::info!("NATIVE {name}: {ops} {unit} in {us} us = {ns} ns/{unit}");
}

fn timed(f: impl FnOnce()) -> u64 {
    let t0 = Instant::now();
    f();
    Instant::now().duration_since(t0).as_micros()
}

/// Same loops and repeat counts as the bench cell's `bench` command.
fn native_bench() {
    let mut words = vec![0u32; k::WORDS];
    let src = vec![7u8; k::COPY_BYTES];
    let mut dst = vec![0u8; k::COPY_BYTES];
    let mut sink = 0u64;

    let us = timed(|| {
        for _ in 0..1000 {
            black_box(Instant::now());
        }
    });
    report("Instant::now", 1000, "call", us);

    k::fill(&mut words);
    let us = timed(|| {
        for _ in 0..20 {
            sink ^= u64::from(k::sum(&words));
        }
    });
    report("sum", 20 * k::WORDS as u64, "word", us);

    let us = timed(|| {
        for _ in 0..20 {
            k::scale(&mut words, 3);
        }
    });
    report("scale", 20 * k::WORDS as u64, "word", us);

    let us = timed(|| {
        for _ in 0..50 {
            k::copy(&mut dst, &src);
        }
    });
    report("copy 4 KB", 50 * k::COPY_BYTES as u64 / 1024, "KB", us);

    // The two ROM routines directly: `memory.copy` in a cell lands on memmove, while
    // `copy_from_slice` above calls memcpy.
    let us = timed(|| {
        for _ in 0..50 {
            // SAFETY: both buffers are COPY_BYTES long and do not overlap.
            unsafe { core::ptr::copy_nonoverlapping(black_box(src.as_ptr()), black_box(dst.as_mut_ptr()), k::COPY_BYTES) };
        }
    });
    report("ROM memcpy 4 KB", 50 * k::COPY_BYTES as u64 / 1024, "KB", us);

    let us = timed(|| {
        for _ in 0..50 {
            // SAFETY: as above; `copy` is memmove (now `firmware_memmove`), which also allows overlap.
            unsafe { core::ptr::copy(black_box(src.as_ptr()), black_box(dst.as_mut_ptr()), k::COPY_BYTES) };
        }
    });
    report("memmove (firmware) 4 KB", 50 * k::COPY_BYTES as u64 / 1024, "KB", us);

    let us = timed(|| {
        for _ in 0..50 {
            // SAFETY: as above.
            unsafe { rom_memmove(black_box(dst.as_mut_ptr()), black_box(src.as_ptr()), k::COPY_BYTES) };
        }
    });
    report("ROM memmove 4 KB", 50 * k::COPY_BYTES as u64 / 1024, "KB", us);

    // Overlapping copies (copy_within): 1 byte apart takes the ROM path, 64 bytes the chunked one.
    for shift in [1, 64] {
        let us = timed(|| {
            for _ in 0..50 {
                black_box(&mut dst).copy_within(shift.., 0);
            }
        });
        report(if shift == 1 { "memmove overlap 1 B" } else { "memmove overlap 64 B" }, 50 * k::COPY_BYTES as u64 / 1024, "KB", us);
    }
    // Correctness of the chunked overlapping path, both directions, against a byte loop.
    let mut a: alloc::vec::Vec<u8> = (0..=255u8).cycle().take(1000).collect();
    let mut b = a.clone();
    a.copy_within(10..900, 40); // up, gap 30
    for i in (0..890).rev() { b[40 + i] = black_box(b[10 + i]); }
    let up = a == b;
    a.copy_within(100..1000, 20); // down, gap 80
    for i in 0..900 { b[20 + i] = black_box(b[100 + i]); }
    esp_firmware::log::info!("NATIVE memmove overlap check: {}", if up && a == b { "correct" } else { "WRONG" });

    let us = timed(|| sink ^= k::xorshift64(sink, k::XORSHIFT_ITERS));
    report("xorshift64", u64::from(k::XORSHIFT_ITERS), "iter", us);

    sink ^= u64::from(misaligned_bench());
    clock_bench();

    esp_firmware::log::info!("NATIVE done (sink {sink})");
}

/// One `lw` at `p`, whatever its alignment: what a trusted-hint wasm load would compile to.
#[inline(always)]
fn lw(p: *const u8) -> u32 {
    let v: u32;
    // SAFETY: callers pass pointers into a live buffer with at least 4 readable bytes.
    unsafe { core::arch::asm!("lw {0}, 0({1})", out(reg) v, in(reg) p, options(nostack, readonly)) };
    v
}

/// One `sw` of `v` at `p`, whatever its alignment.
#[inline(always)]
fn sw(p: *mut u8, v: u32) {
    // SAFETY: callers pass pointers into a live buffer with at least 4 writable bytes.
    unsafe { core::arch::asm!("sw {0}, 0({1})", in(reg) v, in(reg) p, options(nostack)) };
}

/// Does the C6 do misaligned `lw` in hardware, and at what cost, vs the byte-by-byte load
/// WAMR emits today? Logs before the misaligned attempt, so a trap is attributable.
fn misaligned_bench() -> u32 {
    const N: usize = 1000;
    let buf = vec![0x5au8; 4 * N + 8];
    let base = buf.as_ptr();
    let mut acc = 0u32;

    let us = timed(|| {
        for i in 0..N {
            acc = acc.wrapping_add(lw(black_box(base).wrapping_add(4 * i)));
        }
    });
    report("lw aligned", N as u64, "load", us);

    let us = timed(|| {
        for i in 0..N {
            // SAFETY: in bounds; read_unaligned compiles to 4 byte loads + shifts/ors here.
            acc = acc.wrapping_add(unsafe { black_box(base).wrapping_add(4 * i + 1).cast::<u32>().read_unaligned() });
        }
    });
    report("byte-split load (WAMR today)", N as u64, "load", us);

    esp_firmware::log::info!("NATIVE misaligned lw: trying (a trap here means no hardware support)");
    let us = timed(|| {
        for i in 0..N {
            acc = acc.wrapping_add(lw(black_box(base).wrapping_add(4 * i + 1)));
        }
    });
    report("lw misaligned", N as u64, "load", us);

    // Stores: the TRM's mcause 0x6 reads "Misaligned store address or AMO address", so check
    // that a plain misaligned `sw` does not trap either, and that it writes the right bytes.
    let mut wbuf = vec![0u8; 4 * N + 8];
    let wbase = wbuf.as_mut_ptr();
    let us = timed(|| {
        for i in 0..N {
            sw(black_box(wbase).wrapping_add(4 * i), 0x1234_5678);
        }
    });
    report("sw aligned", N as u64, "store", us);
    esp_firmware::log::info!("NATIVE misaligned sw: trying (a trap here means no hardware support)");
    let us = timed(|| {
        for i in 0..N {
            sw(black_box(wbase).wrapping_add(4 * i + 1), 0x1234_5678);
        }
    });
    report("sw misaligned", N as u64, "store", us);
    // Every misaligned store wrote 78 56 34 12 at 4*i+1; check the first and the last one.
    let (first, last) = (&wbuf[1..5], &wbuf[4 * (N - 1) + 1..4 * (N - 1) + 5]);
    let ok = first == [0x78, 0x56, 0x34, 0x12] && last == [0x78, 0x56, 0x34, 0x12];
    esp_firmware::log::info!(
        "NATIVE misaligned sw: bytes {} (first {first:02x?}, last {last:02x?})",
        if ok { "correct" } else { "WRONG" }
    );
    acc
}

/// Native side of the cell's `clock` command: what `uptime_host` does on the host
/// (clock read + postcard encode), and the decode the SDK then runs in the cell.
fn clock_bench() {
    const N: u64 = 1000;
    let mut buf = [0u8; 16];

    let us = timed(|| {
        for _ in 0..N {
            let d = core::time::Duration::from_micros(Instant::now().as_micros());
            black_box(postcard::to_slice(&black_box(d), &mut buf).map(|b| b.len()).ok());
        }
    });
    report("uptime_host body (clock read + encode)", N, "call", us);

    let d = core::time::Duration::from_micros(Instant::now().as_micros());
    let n = postcard::to_slice(&d, &mut buf).map(|b| b.len()).unwrap_or(0);
    let us = timed(|| {
        for _ in 0..N {
            black_box(postcard::from_bytes::<core::time::Duration>(black_box(&buf[..n])).ok());
        }
    });
    report("postcard decode of the Duration", N, "call", us);
}
