# A Myrmic cell in WX

A Myrmic cell is just a wasm module with an agreed set of imports and exports. The Rust SDK generates
them for you; here they are written by hand in WX (`main.wx`). `hello.wat` is the same idea in raw
WebAssembly text, for comparison.

## The contract

| Part | What it is |
|---|---|
| export `"memory"` | the cell's linear memory |
| export `init_cell` | `(i64, i64, i64, i64, i32) -> i32`, runs once on deploy (optional) |
| export `command_<name>` | same signature, called by `myrmic send <cell> <name>` |
| import `logging.log_host` | `(ptr, len, level) -> i32` |
| other imports | `db.key_get` / `db.key_put`, `arguments.get_arguments`, `cell.send_command`, `error.report_error`; signatures in `../sdk/myrmic-sdk/src/host_functions/` |

The five parameters are this cell's id (hi, lo), the sender's id (hi, lo) and the argument payload
length. Return `0` for success.

## Run it on the laptop (no board needed)

```sh
wx build . -o wx_cell.wasm                  # run in this folder

myrmic runtimes start -d -n dev --tmp       # local runtime
myrmic deploy wx_cell.wasm --name wxcell --timeout 30s
myrmic send wxcell ping

grep -rh "WX cell" ~/.local/share/myrmic/*/logs/
# ... INFO wasm_log: ... hello from a WX cell!
# ... INFO wasm_log: ... WX cell got a ping

myrmic runtimes stop dev
```

`hello.wat` works the same way after `wat2wasm hello.wat -o hello.wasm`.

## Check it compiles for the ESP32

These are the exact `wamrc` flags Myrmic uses for the C5, C6 and C61:

```sh
wamrc --xip --target=riscv32 --target-abi=ilp32 --cpu=generic-rv32 \
      --cpu-features=+i,+m,+a,+c -o wx_cell.aot wx_cell.wasm
```

On a real board, deploy the `.wasm` with `--platform riscv32imac --tag esp32c6` (not tested yet).

## Open questions

- How the `myrmic send` argument payload is encoded (needed to read arguments).
- The exact signatures and data formats for `db.*` and `cell.send_command`.
