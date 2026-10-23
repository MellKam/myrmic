#include <stdint.h>
#define IMPORT(m,n) __attribute__((import_module(m), import_name(n)))
#ifdef __wasm__
IMPORT("gpio","set") int32_t gpio_set(int32_t pin, int32_t level);
#define EXPORT(n) __attribute__((export_name(n)))
#else
int32_t gpio_set(int32_t pin, int32_t level);
#define EXPORT(n)
#endif

/* 1. tight memory loop: loads from linear memory */
EXPORT("sum") int32_t sum(const int32_t *a, int32_t n) {
    int32_t s = 0;
    for (int32_t i = 0; i < n; i++) s += a[i];
    return s;
}

/* 2. read-modify-write: loads and stores */
EXPORT("scale") void scale(int32_t *a, int32_t n, int32_t k) {
    for (int32_t i = 0; i < n; i++) a[i] = a[i] * k + 1;
}

/* 3. host call in a loop: what a "bit-bang / poll" cell does */
EXPORT("toggle") int32_t toggle(int32_t pin, int32_t n) {
    int32_t r = 0;
    for (int32_t i = 0; i < n; i++) r |= gpio_set(pin, i & 1);
    return r;
}

/* 4. 64-bit div and float: helper routines on rv32imac */
EXPORT("mix") int64_t mix(int64_t a, int64_t b) { return a / (b | 1) + a % 7; }
EXPORT("fmix") float fmix(float x, float y) { return x * y + x / (y + 1.0f); }

/* 5. recursion: per-call prologue cost */
EXPORT("fib") int32_t fib(int32_t n) { return n < 2 ? n : fib(n - 1) + fib(n - 2); }

/* 6. small leaf called in a loop: call overhead between wasm functions */
__attribute__((noinline)) static int32_t sq(int32_t x) { return x * x; }
EXPORT("sumsq") int32_t sumsq(int32_t n) { int32_t s = 0; for (int32_t i = 0; i < n; i++) s += sq(i); return s; }
