//! The loops both benchmarks run: compiled natively into the firmware, and to wasm
//! (then AOT) inside the bench cell. One source, so the two sides time the same work.
//!
//! `black_box` keeps the optimizer from deleting or precomputing the work.
#![no_std]

use core::hint::black_box;

/// Elements in the compute buffer (8 KB of `u32`).
pub const WORDS: usize = 2048;
/// Bytes per copy.
pub const COPY_BYTES: usize = 4096;
/// Iterations of the 64-bit shift loop.
pub const XORSHIFT_ITERS: u32 = 10_000;

/// Fills `buf` with a simple pattern.
#[inline(never)]
pub fn fill(buf: &mut [u32]) {
    for (i, v) in buf.iter_mut().enumerate() {
        *v = (i as u32).wrapping_mul(2_654_435_761);
    }
}

/// Memory loads + adds: one `i32.load` per element on the wasm side.
#[inline(never)]
pub fn sum(buf: &[u32]) -> u32 {
    let buf = black_box(buf);
    let mut acc = 0u32;
    for &v in buf {
        acc = acc.wrapping_add(v);
    }
    acc
}

/// Load, multiply, store per element.
#[inline(never)]
pub fn scale(buf: &mut [u32], k: u32) {
    let buf = black_box(buf);
    for v in buf.iter_mut() {
        *v = v.wrapping_mul(k).wrapping_add(1);
    }
}

/// A plain `memcpy` (`copy_from_slice`): a software loop in an MVP wasm build,
/// one `memory.copy` with bulk memory.
#[inline(never)]
pub fn copy(dst: &mut [u8], src: &[u8]) {
    black_box(&mut *dst).copy_from_slice(black_box(src));
}

/// 64-bit shifts in a dependent chain: each `i64.shl`/`i64.shr_u` becomes a
/// WAMR helper call on riscv32 XIP.
#[inline(never)]
pub fn xorshift64(seed: u64, iters: u32) -> u64 {
    let mut x = black_box(seed) | 1;
    for _ in 0..black_box(iters) {
        x ^= x << 13;
        x ^= x >> 7;
        x ^= x << 17;
    }
    x
}
