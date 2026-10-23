#!/usr/bin/env bash
# Rebuilds every artifact in this folder. Needs wamrc 2.4.4, LLVM 18 clang/llvm-objdump
# on PATH, wabt (wasm2wat), and the myrmic CLI.
set -euo pipefail
cd "$(dirname "$0")"

# Myrmic's wamrc flags (sdk/tools/aot-compiler/src/lib.rs), minus --cpu-features.
WAMRC=(wamrc --target=riscv32 --target-abi=ilp32 --cpu=generic-rv32)
BASE=+i,+m,+a,+c

dis() { llvm-objdump -d --no-show-raw-insn "$1" > "${1%.o}.s"; }

# --- kernels: hand-written C, wasm->AOT vs native ---------------------------------
pushd kernels >/dev/null
clang --target=wasm32 -mcpu=mvp -O2 -nostdlib \
  -Wl,--no-entry -Wl,--allow-undefined -Wl,--stack-first -Wl,-zstack-size=32768 \
  -Wl,--initial-memory=65536 -Wl,--max-memory=65536 -o k.wasm k.c
wasm2wat k.wasm -o k.wat
clang --target=riscv32 -march=rv32imac -mabi=ilp32 -O2 -c -o k_native.o k.c

"${WAMRC[@]}" --cpu-features=$BASE --xip -o k.aot k.wasm
"${WAMRC[@]}" --cpu-features=$BASE --xip --format=object -o k_xip.o k.wasm
"${WAMRC[@]}" --cpu-features=$BASE --format=object -o k_noxip.o k.wasm
"${WAMRC[@]}" --cpu-features=$BASE --xip --bounds-checks=0 --format=object -o k_xip_nobc.o k.wasm
"${WAMRC[@]}" --cpu-features=$BASE --xip --format=object --stack-usage=k.su -o /dev/null k.wasm

v() { local name=$1 feat=$2; shift 2
  "${WAMRC[@]}" --cpu-features="$feat" --format=object -o "v_$name.o" "$@" k.wasm; }
v myrmic_xip      $BASE --xip
v noxip           $BASE
v xip_nobc        $BASE --xip --bounds-checks=0
v xip_unaligned   $BASE,+unaligned-scalar-mem --xip
v xip_unal_nobc   $BASE,+unaligned-scalar-mem --xip --bounds-checks=0
v xip_fastunal    $BASE,+fast-unaligned-access --xip
v xip_o3_size0    $BASE --xip --size-level=0
for o in *.o; do dis "$o"; done
popd >/dev/null

# --- counter: the real quickstart cell through the real pipeline ------------------
pushd counter >/dev/null
myrmic build --platform esp32c6 cell-src
cp cell-src/target/counter.aot cell-src/target/counter.meta .
cp cell-src/target/wasm32v1-none/release/counter.wasm .
wasm2wat counter.wasm -o counter.wat
"${WAMRC[@]}" --cpu-features=$BASE --xip --format=object -o c_xip.o counter.wasm
"${WAMRC[@]}" --cpu-features=$BASE,+unaligned-scalar-mem --xip --format=object -o c_unal.o counter.wasm
"${WAMRC[@]}" --cpu-features=$BASE --xip --format=object --stack-usage=c.su -o /dev/null counter.wasm
dis c_xip.o; dis c_unal.o
awk '/^  \(func \$command_increment /{p=1;print;next} p&&/^  \(func /{exit} p{print}' counter.wat > inc.wat
# Readable copy: shorten the mangled Rust names of the calls command_increment makes.
sed -E -e 's/\$_R[A-Za-z0-9_]*state[A-Za-z0-9_]*load_from[A-Za-z0-9_]*/$State::load_from/g' \
       -e 's/\$_R[A-Za-z0-9_]*state[A-Za-z0-9_]*save_to[A-Za-z0-9_]*/$State::save_to/g' \
       -e 's/\$_R[A-Za-z0-9_]*logging3log[A-Za-z0-9_]*/$sdk::log/g' \
       -e 's/\$_R[A-Za-z0-9_]*fmt6format[A-Za-z0-9_]*/$alloc::fmt::format/g' \
       -e 's/\$_R[A-Za-z0-9_]*drop_glue[A-Za-z0-9_]*/$drop_glue/g' \
       -e 's/\$_R[A-Za-z0-9_]*report_error[A-Za-z0-9_]*/$sdk::report_error/g' \
       -e 's/\$_R[A-Za-z0-9_]*unwrap_failed[A-Za-z0-9_]*/$unwrap_failed/g' \
       -e 's/\$_R[A-Za-z0-9_]*RawVec[A-Za-z0-9_]*/$RawVec::drop/g' inc.wat > inc_short.wat
popd >/dev/null
