;; A Myrmic cell written by hand, no Rust, no SDK.
(module
  (import "logging" "log_host" (func $log (param i32 i32 i32) (result i32)))
  (memory (export "memory") 1)
  (data (i32.const 16) "hello from a non-Rust cell!")
  (global $n (mut i32) (i32.const 0))

  ;; called once on deploy: (id_hi, id_lo, sender_hi, sender_lo, arg_len) -> exit code
  (func (export "init_cell") (param i64 i64 i64 i64 i32) (result i32)
    (drop (call $log (i32.const 16) (i32.const 27) (i32.const 2)))  ;; level 2 = INFO
    (i32.const 0))

  ;; `myrmic send hello ping` -> export "command_ping"
  (func (export "command_ping") (param i64 i64 i64 i64 i32) (result i32)
    (global.set $n (i32.add (global.get $n) (i32.const 1)))
    (drop (call $log (i32.const 16) (i32.const 27) (i32.const 2)))
    (i32.const 0))
)
