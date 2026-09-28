//! Cell, firmware and pipeline project scaffolds.

use anyhow::Context as _;
use myrmic_build::firmware::Chip;
use textus::Template as _;

use super::pins::{BoardPins, board_pins};
use crate::models;

#[derive(textus::Template)]
#[template(path = "templates/new", strip_suffix = ".tmpl")]
struct TemplateNew<'a> {
    name: &'a str,
    myrmic_sdk: models::CargoDep,
    toolchain: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/firmware", strip_suffix = ".tmpl")]
struct TemplateNewFirmware<'a> {
    name: &'a str,
    chip: &'a str,
    firmware_sdk: models::CargoDep,
    firmware_build: models::CargoDep,
    toolchain: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/firmware-pipeline", strip_suffix = ".tmpl")]
struct TemplateNewFirmwarePipeline<'a> {
    name: &'a str,
    chip: &'a str,
    scl: u8,
    sda: u8,
    general_purpose: String,
    firmware_sdk: models::CargoDep,
    firmware_build: models::CargoDep,
    module_deps: models::CargoDeps,
    pipeline_feature_deps: models::DepFeatures,
    toolchain: &'a str,
}

#[derive(textus::Template)]
#[template(path = "templates/linux-pipeline", strip_suffix = ".tmpl")]
struct TemplateNewLinuxPipeline<'a> {
    name: &'a str,
    signal_layer_ipc: models::CargoDep,
    signal_layer_linux_rt: models::CargoDep,
    linux_i2c_shim: models::CargoDep,
    linux_gpio_shim: models::CargoDep,
    linux_spi_shim: models::CargoDep,
    signal_layer_core: models::CargoDep,
    signal_layer_types: models::CargoDep,
    module_deps: models::CargoDeps,
    linux_codegen: models::CargoDep,
}

/// Renders the selected project template into `path`, cleaning up the directory
/// on failure.
pub(super) fn render(
    repo: &models::Repo,
    name: &str,
    firmware: Option<Chip>,
    pipeline: bool,
    path: &std::path::Path,
) -> anyhow::Result<()> {
    // Only a directory we create is ours to clean up on failure; never delete a
    // directory the user pointed us at that already held files.
    let preexisting = path.exists();

    let dep = |known_path: &str| repo.clone().resolve_or_assume_correct(known_path);

    let result = match (firmware, pipeline) {
        (Some(chip), true) => {
            let BoardPins {
                scl,
                sda,
                general_purpose,
            } = board_pins(chip.name())?;
            let modules: Vec<_> = shipped_modules(repo).collect();
            let pipeline_feature_deps =
                models::DepFeatures(modules.iter().map(|(name, _)| name.clone()).collect());
            let module_deps = models::CargoDeps(
                modules
                    .into_iter()
                    .map(|(name, dep)| (name, dep.optional()))
                    .collect(),
            );

            TemplateNewFirmwarePipeline {
                name,
                chip: chip.name(),
                scl,
                sda,
                general_purpose,
                firmware_sdk: dep("embedded/esp-hal/crates/esp-firmware"),
                firmware_build: dep("embedded/esp-hal/crates/esp-firmware-build"),
                module_deps,
                pipeline_feature_deps,
                toolchain: myrmic_build::TOOLCHAIN,
            }
            .render_into(path)
        }
        (Some(chip), false) => TemplateNewFirmware {
            name,
            chip: chip.name(),
            firmware_sdk: dep("embedded/esp-hal/crates/esp-firmware"),
            firmware_build: dep("embedded/esp-hal/crates/esp-firmware-build"),
            toolchain: myrmic_build::TOOLCHAIN,
        }
        .render_into(path),
        (None, true) => TemplateNewLinuxPipeline {
            name,
            signal_layer_ipc: dep("sdk/signal-layer/signal-layer-ipc"),
            signal_layer_linux_rt: dep("swarm/signal-layer/signal-layer-linux-rt"),
            linux_i2c_shim: dep("swarm/signal-layer/linux-i2c-shim"),
            linux_gpio_shim: dep("swarm/signal-layer/linux-gpio-shim"),
            linux_spi_shim: dep("swarm/signal-layer/linux-spi-shim"),
            signal_layer_core: dep("sdk/signal-layer/signal-layer-core"),
            signal_layer_types: dep("sdk/signal-layer/signal-layer-types")
                .renamed_from("myrmic-signal-layer-types"),
            module_deps: models::CargoDeps(shipped_modules(repo).collect()),
            linux_codegen: dep("sdk/signal-layer/linux-codegen"),
        }
        .render_into(path),
        (None, false) => TemplateNew {
            name,
            myrmic_sdk: dep("sdk/myrmic-sdk"),
            toolchain: myrmic_build::TOOLCHAIN,
        }
        .render_into(path),
    };

    if let Err(err) = result {
        if !preexisting && let Err(io_err) = std::fs::remove_dir_all(path) {
            return Err(anyhow::Error::new(io_err).context(format!(
                "unable to cleanup after template render failure: {err}"
            )));
        }
        return Err(anyhow::Error::new(err).context("failed to render template"));
    }

    Ok(())
}

/// Every driver and step shipped with myrmic as `(crate name, dependency)`,
/// seeded into the pipeline scaffolds so any pipeline built from their YAMLs
/// compiles.
fn shipped_modules(repo: &models::Repo) -> impl Iterator<Item = (String, models::CargoDep)> + '_ {
    let drivers = esp_codegen::driver_ids().into_iter().map(|id| {
        (
            format!("{id}-driver"),
            format!("signal-modules/drivers/{id}"),
        )
    });
    let steps = esp_codegen::step_ids().into_iter().map(|id| {
        let path = format!("signal-modules/steps/{id}");
        (id, path)
    });
    drivers
        .chain(steps)
        .map(move |(name, path)| (name, repo.clone().resolve_or_assume_correct(&path)))
}

/// Writes the partition layout for `chip` next to a firmware scaffold: the same
/// per-chip files `modem-esp32` builds with (C5/C6 = 4 MB, C61 = 8 MB).
pub(super) fn write_partitions(chip: Chip, path: &std::path::Path) -> anyhow::Result<()> {
    let partitions = match chip {
        Chip::Esp32c5 => {
            include_str!("../../../../../embedded/esp-hal/modem-esp32/partitions/esp32c5.toml")
        }
        Chip::Esp32c6 => {
            include_str!("../../../../../embedded/esp-hal/modem-esp32/partitions/esp32c6.toml")
        }
        Chip::Esp32c61 => {
            include_str!("../../../../../embedded/esp-hal/modem-esp32/partitions/esp32c61.toml")
        }
    };
    let dst = path.join("partitions.toml");
    std::fs::write(&dst, partitions).with_context(|| format!("failed to write {}", dst.display()))
}
