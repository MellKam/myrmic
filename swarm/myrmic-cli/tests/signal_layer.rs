//! `myrmic signal-layer`: the Signal Layer scaffolds, run through the built
//! binary.

use std::path::{Path, PathBuf};
use std::process::{Command, Output};

/// The repository root as `--sdk`, so a scaffold resolves the peeriot crates
/// to this checkout.
fn repo_root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("../..")
}

/// Runs `myrmic <args> --registry-dir <registry>`, with `--sdk <repo root>`
/// for a scaffold that depends on the myrmic crates.
fn module(args: &[&str], registry: &Path, sdk: bool) -> Output {
    let mut cmd = Command::new(env!("CARGO_BIN_EXE_myrmic"));
    cmd.args(args).arg("--registry-dir").arg(registry);
    if sdk {
        cmd.arg("--sdk").arg(repo_root());
    }
    cmd.output().expect("failed to run myrmic")
}

fn assert_ok(output: &Output) {
    assert!(
        output.status.success(),
        "myrmic failed\nstdout:\n{}\nstderr:\n{}",
        String::from_utf8_lossy(&output.stdout),
        String::from_utf8_lossy(&output.stderr),
    );
}

#[test]
fn driver_scaffolds_a_module_crate_under_the_registry() {
    let registry = tempfile::TempDir::with_prefix("myrmic-").expect("can always create a tempdir");

    assert_ok(&module(
        &["signal-layer", "driver", "demo_i2c", "--bus", "i2c"],
        registry.path(),
        false,
    ));

    let crate_dir = registry.path().join("drivers/demo_i2c");
    let manifest = std::fs::read_to_string(crate_dir.join("Cargo.toml")).expect("Cargo.toml");
    assert!(
        manifest
            .lines()
            .any(|line| line == r#"name = "demo_i2c-driver""#),
        "the driver crate is named after the id:\n{manifest}"
    );
    assert!(crate_dir.join("descriptor.yaml").exists());
    assert!(crate_dir.join("src/lib.rs").exists());
}

#[test]
fn driver_needs_a_bus() {
    let registry = tempfile::TempDir::with_prefix("myrmic-").expect("can always create a tempdir");

    let output = module(
        &["signal-layer", "driver", "demo_i2c"],
        registry.path(),
        false,
    );

    assert!(!output.status.success());
    let stderr = String::from_utf8_lossy(&output.stderr);
    assert!(stderr.contains("--bus"), "{stderr}");
    assert!(!registry.path().join("drivers").exists());
}

/// `sl` is the short spelling of `signal-layer`.
#[test]
fn step_scaffolds_a_module_crate_under_the_registry() {
    let registry = tempfile::TempDir::with_prefix("myrmic-").expect("can always create a tempdir");

    assert_ok(&module(&["sl", "step", "demo_step"], registry.path(), true));

    let crate_dir = registry.path().join("steps/demo_step");
    let manifest = std::fs::read_to_string(crate_dir.join("Cargo.toml")).expect("Cargo.toml");
    assert!(
        manifest.lines().any(|line| line == r#"name = "demo_step""#),
        "{manifest}"
    );
    assert!(
        manifest.contains("signal-layer-core = { path = "),
        "the step depends on signal-layer-core from the checkout:\n{manifest}"
    );
    assert!(crate_dir.join("descriptor.yaml").exists());
}

#[test]
fn a_module_id_is_not_a_path() {
    let registry = tempfile::TempDir::with_prefix("myrmic-").expect("can always create a tempdir");

    let output = module(
        &["signal-layer", "step", "nested/demo_step"],
        registry.path(),
        true,
    );

    assert!(!output.status.success());
    let stderr = String::from_utf8_lossy(&output.stderr);
    assert!(stderr.contains("module id"), "{stderr}");
    assert!(!registry.path().join("steps").exists());
}
