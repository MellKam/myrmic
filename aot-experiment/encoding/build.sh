#!/usr/bin/env bash
# Builds the counter cell four times, changing only how `count` encodes its reply,
# and reports what each choice costs. Same rustflags as `myrmic build` (see
# swarm/myrmic-build/src/compile.rs); a plain build reproduces its .wasm byte for byte.
set -euo pipefail
cd "$(dirname "$0")"
HERE=$(pwd)
SRC=../counter/cell-src
export CARGO_TARGET_DIR=$HERE/target

# variant | `use` line | callback type | value sent | extra items
variants=(
  "json_value|use myrmic_sdk::{Callback, JsonValue, Metadata};|Callback<JsonValue>|\&JsonValue::from(value)|"
  "json_i32|use myrmic_sdk::{Callback, Metadata};|Callback<i32>|\&value|"
  "postcard|use myrmic_sdk::{Callback, Metadata};|Callback<Count>|\&Count(value)|#[derive(serde::Serialize, serde::Deserialize, myrmic_sdk::Message)]\n#[codec(myrmic_sdk::Postcard)]\npub struct Count(pub i32);\n"
  "raw_bytes|use myrmic_sdk::{Bytes, Callback, Metadata};|Callback<Bytes>|\&Bytes::from(value.to_le_bytes())|"
)

FLAGS="-C link-arg=--stack-first -C link-arg=-zstack-size=32768 -C link-arg=--initial-memory=131072 -C link-arg=--max-memory=131072 -C opt-level=z -C lto -C embed-bitcode=yes -C codegen-units=1 -C panic=abort"

printf "%-11s %8s %8s %8s %8s %8s  %s\n" variant wasm code data name aot "still linked"
for v in "${variants[@]}"; do
  IFS='|' read -r name use cb val extra <<<"$v"
  dir=$HERE/$name
  rm -rf "$dir"; mkdir -p "$dir"
  cp -R "$SRC/Cargo.toml" "$SRC/Cargo.lock" "$SRC/rust-toolchain.toml" "$SRC/src" "$dir/"
  # Rewrite only the three lines that carry the reply type.
  python3 - "$dir/src/lib.rs" "$use" "$cb" "$val" "$extra" <<'EOF'
import sys
path, use, cb, val, extra = sys.argv[1:]
s = open(path).read()
s = s.replace("use myrmic_sdk::{Callback, JsonValue, Metadata};", use + "\n" + extra.replace("\\n", "\n"))
s = s.replace("Option<Callback<JsonValue>>", "Option<" + cb + ">")
s = s.replace("&JsonValue::from(value)", val.replace("\\&", "&"))
open(path, "w").write(s)
EOF
  CARGO_TARGET_WASM32V1_NONE_RUSTFLAGS="$FLAGS -C link-arg=--Map=$dir/counter.map" WASM_SDK_HEAP_SIZE=32768 \
    cargo rustc --quiet --release --target wasm32v1-none --manifest-path "$dir/Cargo.toml" --lib --crate-type cdylib
  cp "$CARGO_TARGET_DIR/wasm32v1-none/release/counter.wasm" "$dir/counter.wasm"
  wasm2wat "$dir/counter.wasm" -o "$dir/counter.wat"
  wamrc --xip --target=riscv32 --target-abi=ilp32 --cpu=generic-rv32 --cpu-features=+i,+m,+a,+c \
    -o "$dir/counter.aot" "$dir/counter.wasm" >/dev/null

  sec() { wasm-objdump -h "$dir/counter.wasm" | grep -E "$1" | sed -E 's/.*size=0x([0-9a-f]+).*/\1/' | head -1; }
  linked=""
  grep -q '10serde_json' "$dir/counter.wat" && linked+="serde_json "
  grep -q '4zmij11STATIC_DATA' "$dir/counter.map" && linked+="zmij-table "
  grep -q '4zmij' "$dir/counter.wat" && ! grep -q 'zmij-table' <<<"$linked" && linked+="zmij-code "
  printf "%-11s %8d %8d %8d %8d %8d  %s\n" "$name" "$(stat -f%z "$dir/counter.wasm")" \
    $((16#$(sec ' Code '))) $((16#$(sec ' Data '))) $((16#$(sec '"name"'))) \
    "$(stat -f%z "$dir/counter.aot")" "${linked:-none}"
done
