use myrmic_build::firmware::Chip;

use crate::args::Ctx;
use crate::determine_name;
use crate::utils::validate_name;

mod pins;
mod project;

#[derive(clap::Parser)]
pub struct New {
    path: std::path::PathBuf,

    #[clap(short, long)]
    name: Option<String>,

    /// Scaffold a firmware crate for this chip (`esp32c5`, `esp32c6`, `esp32c61`)
    /// instead of a cell.
    #[clap(short, long, num_args = 0..=1, default_missing_value = "esp32c6")]
    firmware: Option<Chip>,

    /// Also scaffold a Signal Layer pipeline (board.yml + pipeline.yml). With
    /// --firmware the pipeline is generated into the firmware image; on its own
    /// it scaffolds a standalone Linux pipeline project.
    #[clap(long)]
    pipeline: bool,

    #[clap(long, alias = "repo")]
    sdk: Option<String>,
}

pub fn handle(ctx: &Ctx, cmd: New) -> anyhow::Result<()> {
    let New {
        path,
        name,
        sdk: repo,
        firmware,
        pipeline,
    } = cmd;

    let name = determine_name(name.as_deref(), &path)?;

    validate_name(name)?;

    match (firmware, pipeline) {
        (Some(chip), true) => {
            crate::info!(ctx, "Creating firmware pipeline '{}' for {}", name, chip);
        }
        (Some(chip), false) => crate::info!(ctx, "Creating firmware '{}' for {}", name, chip),
        (None, true) => crate::info!(ctx, "Creating Linux pipeline '{}'", name),
        (None, false) => crate::info!(ctx, "Creating '{}'", name),
    }

    let repo = crate::utils::resolve_repo(ctx, repo.as_deref())?;

    project::render(&repo, name, firmware, pipeline, &path)?;

    if let Some(chip) = firmware {
        project::write_partitions(chip, &path)?;
    }

    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use clap::Parser as _;

    /// The module scaffolds live under `myrmic signal-layer`; `new` no longer
    /// knows the flags.
    #[test]
    fn the_signal_layer_module_flags_are_gone() {
        for args in [
            ["new", "foo", "--driver=i2c"],
            ["new", "foo", "--step"],
            ["new", "foo", "--registry-dir=."],
        ] {
            assert!(New::try_parse_from(args).is_err(), "{args:?}");
        }
    }
}
