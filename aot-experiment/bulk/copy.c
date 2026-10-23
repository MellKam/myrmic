// One copy routine, three ways. Built by ../bulk/build.sh.
#include <stddef.h>
#include <stdint.h>
#ifdef __wasm__
#define EXPORT(n) __attribute__((export_name(n)))
#else
#define EXPORT(n)
#endif

// With -mbulk-memory this is one `memory.copy` instruction; without it, clang
// would need a memcpy function to call.
EXPORT("copy") void copy(void *dst, const void *src, size_t n) { __builtin_memmove(dst, src, n); }

// What a software copy looks like when nobody provides memmove: a word loop.
EXPORT("copy_words") void copy_words(uint32_t *dst, const uint32_t *src, size_t words) {
    for (size_t i = 0; i < words; i++) dst[i] = src[i];
}
