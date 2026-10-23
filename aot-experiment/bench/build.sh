#!/usr/bin/env bash
# Builds the bench cell twice (MVP, and with +bulk-memory) with `myrmic build`'s rustflags,
# then AOT-compiles each with Myrmic's own aot-compiler. Output: out/{mvp,bulk,unal,nat,nat-s,nat-3}/bench.{wasm,aot,meta}
set -euo pipefail
cd "$(dirname "$0")"
HERE=$(pwd)
REPO=$(cd ../.. && pwd)
export CARGO_TARGET_DIR=$HERE/target

FLAGS="-C link-arg=--stack-first -C link-arg=-zstack-size=32768 -C link-arg=--initial-memory=131072 -C link-arg=--max-memory=131072 -C opt-level=z -C lto -C embed-bitcode=yes -C codegen-units=1 -C panic=abort"

[ -x "$REPO/target/release/aot-compiler" ] || cargo build -q --release -p aot-compiler --manifest-path "$REPO/Cargo.toml"

# unal: the MVP wasm, AOT-compiled with +unaligned-scalar-mem (see unaligned-wamrc/wamrc).
# nat:  unal, plus the firmware's host-function signatures handed to wamrc (native-libs/),
#       so imports compile to direct calls instead of the generic aot_invoke_native path.
for m in time tap; do
  [ native-libs/lib$m.dylib -nt native-libs/$m.c ] || /usr/bin/clang -shared -o native-libs/lib$m.dylib native-libs/$m.c
done
# nat-s / nat-3: nat, with the cell's Rust code at opt-level=s / 3 instead of z (more inlining).
for variant in mvp bulk unal nat nat-s nat-3; do
  extra=""; [ "$variant" = bulk ] && extra="-C target-feature=+bulk-memory"
  vflags=$FLAGS
  case $variant in nat-s) vflags=${FLAGS/opt-level=z/opt-level=s} ;; nat-3) vflags=${FLAGS/opt-level=z/opt-level=3} ;; esac
  wpath=$PATH; extra_wamrc=""
  case $variant in unal|nat*) wpath=$HERE/unaligned-wamrc:$PATH ;; esac
  case $variant in nat*) extra_wamrc="--native-lib=$HERE/native-libs/libtime.dylib --native-lib=$HERE/native-libs/libtap.dylib" ;; esac
  out=$HERE/out/$variant; mkdir -p "$out"
  CARGO_TARGET_WASM32V1_NONE_RUSTFLAGS="$vflags $extra" WASM_SDK_HEAP_SIZE=32768 \
    cargo rustc --quiet --release --target wasm32v1-none --manifest-path cell/Cargo.toml --lib --crate-type cdylib
  cp "$CARGO_TARGET_DIR/wasm32v1-none/release/bench.wasm" "$out/bench.wasm"
  wasm2wat "$out/bench.wasm" -o "$out/bench.wat"
  PATH=$wpath WAMRC_EXTRA=$extra_wamrc "$REPO/target/release/aot-compiler" "$out/bench.wasm" -t esp32c6 -o "$out" >/dev/null
  printf "%-5s wasm=%6d aot=%6d memory.copy=%d\n" "$variant" "$(stat -f%z "$out/bench.wasm")" \
    "$(stat -f%z "$out/bench.aot")" "$(grep -c 'memory.copy' "$out/bench.wat" || true)"
done
