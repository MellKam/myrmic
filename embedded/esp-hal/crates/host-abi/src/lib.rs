//! The host functions the firmware's WAMR runtime offers to cells: module, name and WAMR
//! signature of each, in one table that both sides can read.
//!
//! The firmware checks every `host_function_decl!` against this table at compile time, so the
//! table always matches what the firmware registers. Host tools can then hand the same
//! signatures to `wamrc` (its `--native-lib` option), which lets it compile calls to these
//! functions as direct calls instead of WAMR's generic `aot_invoke_native` path.
//!
//! Signatures use WAMR's notation: `(params)result`, with `i`/`I`/`f`/`F` for i32/i64/f32/f64,
//! `*` for a pointer into linear memory (checked and translated by the runtime), `~` for the
//! byte length of the preceding pointer, and `$` for a NUL-terminated string.
#![no_std]

/// One host function: its import name and WAMR signature.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct HostFunction {
    /// Import name, as the cell's wasm imports it.
    pub name: &'static str,
    /// WAMR signature, e.g. `"(*~)i"`.
    pub signature: &'static str,
}

/// The functions registered under one wasm import module.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct HostModule {
    /// Import module name, e.g. `"time"`.
    pub name: &'static str,
    /// The functions registered under it.
    pub functions: &'static [HostFunction],
}

/// Every host module the firmware can register, feature-gated ones (`ble`, `selftest`) included.
pub const MODULES: &[HostModule] = &[
    // wasm-runtime/src/imports/arguments.rs
    HostModule {
        name: "arguments",
        functions: &[HostFunction {
            name: "get_arguments",
            signature: "(*~)i",
        }],
    },
    // wasm-runtime/src/imports/ble.rs
    HostModule {
        name: "ble",
        functions: &[
            HostFunction {
                name: "ble_scan",
                signature: "(*~)i",
            },
            HostFunction {
                name: "ble_stop_scan",
                signature: "()i",
            },
            HostFunction {
                name: "ble_connect",
                signature: "(*~)i",
            },
            HostFunction {
                name: "ble_disconnect",
                signature: "(i)i",
            },
            HostFunction {
                name: "ble_subscribe",
                signature: "(*~)i",
            },
            HostFunction {
                name: "ble_unsubscribe",
                signature: "(i)i",
            },
            HostFunction {
                name: "ble_read",
                signature: "(*~)i",
            },
            HostFunction {
                name: "ble_write",
                signature: "(*~)i",
            },
            HostFunction {
                name: "ble_set_pair_passkey",
                signature: "(i)i",
            },
        ],
    },
    // wasm-runtime/src/imports/cell/mod.rs
    HostModule {
        name: "cell",
        functions: &[
            HostFunction {
                name: "send_command",
                signature: "(*~)i",
            },
            HostFunction {
                name: "publish_event",
                signature: "(*~)i",
            },
            HostFunction {
                name: "create_timer",
                signature: "(*~)i",
            },
            HostFunction {
                name: "cancel_timer",
                signature: "(i)i",
            },
        ],
    },
    // wasm-runtime/src/imports/db/mod.rs
    HostModule {
        name: "db",
        functions: &[
            HostFunction {
                name: "key_put",
                signature: "(*~)i",
            },
            HostFunction {
                name: "key_delete",
                signature: "(*~)i",
            },
            HostFunction {
                name: "key_get",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "key_prefix",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "tb_insert",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "tb_count",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "tb_get",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "tb_list",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "tb_append",
                signature: "(*~)i",
            },
            HostFunction {
                name: "tb_delete",
                signature: "(*~)i",
            },
            HostFunction {
                name: "blob_store",
                signature: "(*~*~*~)i",
            },
            HostFunction {
                name: "blob_link",
                signature: "(*~)i",
            },
            HostFunction {
                name: "blob_unlink",
                signature: "(*~)i",
            },
            HostFunction {
                name: "blob_move",
                signature: "(*~)i",
            },
            HostFunction {
                name: "blob_resolve",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "path_resolve",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "paths_list",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "publish_measurement",
                signature: "(*~)i",
            },
            HostFunction {
                name: "find_measurement",
                signature: "(*~*~)i",
            },
            HostFunction {
                name: "sem_update",
                signature: "(*~)i",
            },
            HostFunction {
                name: "sem_select",
                signature: "(*~*~)i",
            },
        ],
    },
    // wasm-runtime/src/imports/error.rs
    HostModule {
        name: "error",
        functions: &[HostFunction {
            name: "report_error",
            signature: "(*~)i",
        }],
    },
    // wasm-runtime/src/imports/gpio.rs
    HostModule {
        name: "gpio",
        functions: &[
            HostFunction {
                name: "is_pin_supported",
                signature: "(i)i",
            },
            HostFunction {
                name: "set",
                signature: "(ii)i",
            },
            HostFunction {
                name: "read",
                signature: "(i)i",
            },
            HostFunction {
                name: "wait_for_level",
                signature: "(ii)i",
            },
            HostFunction {
                name: "wait_for_edge",
                signature: "(ii)i",
            },
        ],
    },
    // wasm-runtime/src/imports/logging.rs
    HostModule {
        name: "logging",
        functions: &[HostFunction {
            name: "log_host",
            signature: "(*~i)i",
        }],
    },
    // wasm-runtime/src/imports/outlet.rs
    HostModule {
        name: "outlet",
        functions: &[
            HostFunction {
                name: "outlet_resolve",
                signature: "(*~)i",
            },
            HostFunction {
                name: "outlet_write_retained",
                signature: "(i*~)i",
            },
            HostFunction {
                name: "outlet_list_len",
                signature: "()i",
            },
            HostFunction {
                name: "outlet_list_entry",
                signature: "(i*~*~)i",
            },
            HostFunction {
                name: "outlet_type_id",
                signature: "(i*~)i",
            },
        ],
    },
    // wasm-runtime/src/imports/runtime.rs
    HostModule {
        name: "runtime",
        functions: &[
            HostFunction {
                name: "runtime_tags_len_host",
                signature: "()i",
            },
            HostFunction {
                name: "runtime_tags_host",
                signature: "(*~)i",
            },
            HostFunction {
                name: "runtime_id_host",
                signature: "(*~)i",
            },
        ],
    },
    // wasm-runtime/src/imports/selftest.rs
    HostModule {
        name: "selftest",
        functions: &[HostFunction {
            name: "wdt_selftest_wedge",
            signature: "(i)i",
        }],
    },
    // wasm-runtime/src/imports/tap.rs
    HostModule {
        name: "tap",
        functions: &[
            HostFunction {
                name: "tap_resolve",
                signature: "(*~)i",
            },
            HostFunction {
                name: "tap_read_retained",
                signature: "(i*~*~)i",
            },
            HostFunction {
                name: "tap_take_event",
                signature: "(i*~)i",
            },
            HostFunction {
                name: "tap_drain_batch",
                signature: "(i*~)i",
            },
            HostFunction {
                name: "tap_list_len",
                signature: "()i",
            },
            HostFunction {
                name: "tap_list_entry",
                signature: "(i*~*~)i",
            },
            HostFunction {
                name: "tap_type_id",
                signature: "(i*~)i",
            },
        ],
    },
    // wasm-runtime/src/imports/time.rs
    HostModule {
        name: "time",
        functions: &[
            HostFunction {
                name: "wait_host",
                signature: "(*~)i",
            },
            HostFunction {
                name: "now_host",
                signature: "(*~)i",
            },
            HostFunction {
                name: "uptime_host",
                signature: "(*~)i",
            },
        ],
    },
];

/// The signature of host function `name`, or `None` when the table does not list it.
///
/// Names are unique across modules (checked by this crate's tests), so the name alone finds it.
#[must_use]
pub const fn signature_of(name: &str) -> Option<&'static str> {
    let mut m = 0;
    while m < MODULES.len() {
        let functions = MODULES[m].functions;
        let mut f = 0;
        while f < functions.len() {
            if bytes_eq(functions[f].name.as_bytes(), name.as_bytes()) {
                return Some(functions[f].signature);
            }
            f += 1;
        }
        m += 1;
    }
    None
}

/// Whether the table lists `name` with exactly `signature` (given as bytes, so a C string's
/// `to_bytes()` can be passed straight in). Used in a `const` assertion by the firmware.
#[must_use]
pub const fn matches(name: &str, signature: &[u8]) -> bool {
    match signature_of(name) {
        Some(listed) => bytes_eq(listed.as_bytes(), signature),
        None => false,
    }
}

const fn bytes_eq(a: &[u8], b: &[u8]) -> bool {
    if a.len() != b.len() {
        return false;
    }
    let mut i = 0;
    while i < a.len() {
        if a[i] != b[i] {
            return false;
        }
        i += 1;
    }
    true
}

#[cfg(test)]
mod tests {
    use super::*;

    fn all() -> impl Iterator<Item = (&'static str, &'static HostFunction)> {
        MODULES
            .iter()
            .flat_map(|m| m.functions.iter().map(move |f| (m.name, f)))
    }

    #[test]
    fn names_are_unique_across_modules() {
        for (i, (module, f)) in all().enumerate() {
            for (other_module, other) in all().skip(i + 1) {
                assert_ne!(
                    f.name, other.name,
                    "`{}` is listed in both `{module}` and `{other_module}`",
                    f.name
                );
            }
        }
    }

    #[test]
    fn signatures_are_well_formed() {
        for (module, f) in all() {
            let s = f.signature.as_bytes();
            let close = s.iter().position(|&c| c == b')');
            assert!(
                s.first() == Some(&b'(') && close.is_some(),
                "{module}.{}: `{}`",
                f.name,
                f.signature
            );
            let close = close.unwrap();
            assert!(
                s[1..close].iter().all(|c| b"iIfFr*~$".contains(c)),
                "{module}.{}: unknown parameter type in `{}`",
                f.name,
                f.signature
            );
            assert!(
                s.len() <= close + 2,
                "{module}.{}: more than one result in `{}`",
                f.name,
                f.signature
            );
            for (i, &c) in s[1..close].iter().enumerate() {
                if c == b'~' {
                    assert!(
                        i > 0 && s[i] == b'*',
                        "{module}.{}: `~` must follow `*` in `{}`",
                        f.name,
                        f.signature
                    );
                }
            }
        }
    }

    #[test]
    fn lookup() {
        assert_eq!(signature_of("uptime_host"), Some("(*~)i"));
        assert!(matches("tap_list_len", b"()i"));
        assert!(!matches("tap_list_len", b"(i)i"));
        assert_eq!(signature_of("no_such_function"), None);
    }
}
