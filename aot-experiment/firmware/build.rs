fn main() {
    esp_firmware_build::configure();
    // Experiment: replace the ROM `memmove` with `firmware_memmove` (src/main.rs), which uses
    // the much faster ROM `memcpy` when the buffers don't overlap. See memmove.x.
    let dir = std::env::var("CARGO_MANIFEST_DIR").unwrap();
    println!("cargo:rustc-link-search={dir}");
    println!("cargo:rustc-link-arg-bins=-Tmemmove.x");
    println!("cargo:rerun-if-changed=memmove.x");
}
