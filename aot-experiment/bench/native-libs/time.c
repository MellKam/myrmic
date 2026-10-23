/* Experiment: tells wamrc the signatures of the firmware's `time` imports so it emits
 * direct calls instead of the generic aot_invoke_native path. Only names and
 * signatures are used at compile time; the function pointer is a placeholder.
 * Signatures copied from wasm-runtime/src/imports/time.rs. */
#include <stdint.h>
typedef struct { const char *symbol; void *func_ptr; const char *signature; void *attachment; } NativeSymbol;
static void stub(void) {}
static NativeSymbol syms[] = {
    {"wait_host", (void *)stub, "(*~)i", 0},
    {"now_host", (void *)stub, "(*~)i", 0},
    {"uptime_host", (void *)stub, "(*~)i", 0},
};
uint32_t get_native_lib(char **module_name, NativeSymbol **native_symbols) {
    *module_name = "time";
    *native_symbols = syms;
    return sizeof(syms) / sizeof(syms[0]);
}
