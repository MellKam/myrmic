#!/usr/bin/env bash
# Compares wasm bulk memory (memory.copy) with a software copy loop, through Myrmic's wamrc flags.
set -euo pipefail
cd "$(dirname "$0")"
W=(wamrc --xip --target=riscv32 --target-abi=ilp32 --cpu=generic-rv32 --cpu-features=+i,+m,+a,+c --format=object)
LD=(-nostdlib -Wl,-zstack-size=8192 -Wl,--no-entry -Wl,--allow-undefined -Wl,--initial-memory=65536 -Wl,--max-memory=65536)
clang --target=wasm32 -mcpu=mvp -mbulk-memory -O2 -fno-builtin-memmove "${LD[@]}" -o copy_bulk.wasm copy.c
clang --target=wasm32 -mcpu=mvp -O2 -fno-builtin "${LD[@]}" -Wl,--export=copy_words -o copy_mvp.wasm copy.c 2>/dev/null || true
for f in copy_bulk copy_mvp; do [ -f $f.wasm ] || continue
  wasm2wat $f.wasm -o $f.wat; "${W[@]}" -o $f.o $f.wasm >/dev/null; llvm-objdump -d --no-show-raw-insn $f.o > $f.s; done
clang --target=riscv32 -march=rv32imac -mabi=ilp32 -O2 -c -o copy_native.o copy.c
llvm-objdump -d --no-show-raw-insn copy_native.o > copy_native.s
