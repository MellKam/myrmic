/* Experiment: signatures of the firmware's `tap` imports for wamrc (see time.c).
 * Copied from wasm-runtime/src/imports/tap.rs. */
#include <stdint.h>
typedef struct { const char *symbol; void *func_ptr; const char *signature; void *attachment; } NativeSymbol;
static void stub(void) {}
static NativeSymbol syms[] = {
    {"tap_resolve", (void *)stub, "(*~)i", 0},
    {"tap_read_retained", (void *)stub, "(i*~*~)i", 0},
    {"tap_take_event", (void *)stub, "(i*~)i", 0},
    {"tap_drain_batch", (void *)stub, "(i*~)i", 0},
    {"tap_list_len", (void *)stub, "()i", 0},
    {"tap_list_entry", (void *)stub, "(i*~*~)i", 0},
    {"tap_type_id", (void *)stub, "(i*~)i", 0},
};
uint32_t get_native_lib(char **module_name, NativeSymbol **native_symbols) {
    *module_name = "tap";
    *native_symbols = syms;
    return sizeof(syms) / sizeof(syms[0]);
}
