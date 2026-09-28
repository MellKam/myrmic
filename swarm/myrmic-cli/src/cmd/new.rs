use myrmic_build::firmware::Chip;

use crate::args::Ctx;
use crate::determine_name;

mod module;
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

    /// Scaffold a Signal Layer driver for this bus. Requires a value:
    /// `--driver=i2c` or `--driver=spi`.
    #[clap(long, require_equals = true, conflicts_with_all = ["firmware", "pipeline", "step"])]
    driver: Option<Transport>,

    /// Scaffold a Signal Layer processing step.
    #[clap(long, conflicts_with_all = ["firmware", "pipeline", "driver"])]
    step: bool,

    /// Base directory a scaffolded driver/step is placed under, as
    /// `drivers/<id>` or `steps/<id>` (default: the current directory). Point a
    /// pipeline's build.rs at this directory to enumerate the modules in it.
    #[clap(long)]
    registry_dir: Option<std::path::PathBuf>,
}

/// The bus a scaffolded driver talks over.
#[derive(Clone, Copy, PartialEq, Eq)]
enum Transport {
    I2c,
    Spi,
}

impl std::str::FromStr for Transport {
    type Err = anyhow::Error;
    fn from_str(s: &str) -> anyhow::Result<Self> {
        match s {
            "i2c" => Ok(Self::I2c),
            "spi" => Ok(Self::Spi),
            other => anyhow::bail!("unknown bus `{other}`; expected `i2c` or `spi`"),
        }
    }
}

pub fn handle(ctx: &Ctx, cmd: New) -> anyhow::Result<()> {
    let New {
        path,
        name,
        sdk: repo,
        firmware,
        pipeline,
        driver,
        step,
        registry_dir,
    } = cmd;

    if let Some(transport) = driver {
        return module::handle(
            ctx,
            module::ModuleKind::Driver(transport),
            &path,
            name.as_deref(),
            repo.as_deref(),
            registry_dir.as_deref(),
        );
    }
    if step {
        return module::handle(
            ctx,
            module::ModuleKind::Step,
            &path,
            name.as_deref(),
            repo.as_deref(),
            registry_dir.as_deref(),
        );
    }

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

fn validate_name(name: &str) -> anyhow::Result<()> {
    if name.is_empty() {
        anyhow::bail!("<name> is empty");
    }

    let mut chars = name.chars();
    if let Some(ch) = chars.next() {
        if ch.is_ascii_digit() {
            // Technically would be caught via `is_xid_start`, but this is a pretty standard mistake to make...
            anyhow::bail!("<name> cannot start with a digit");
        }
        if !(unicode_ident::is_xid_start(ch) || ch == '_') {
            anyhow::bail!(
                "the first character in <name> must be a Unicode XID start character (most letters or `_`)"
            );
        }
    }
    for ch in chars {
        if !(unicode_ident::is_xid_continue(ch) || ch == '-') {
            anyhow::bail!(
                "<name> must be Unicode XID characters (numbers, `-`, `_`, or most letters)"
            );
        }
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use clap::Parser as _;

    #[test]
    fn transport_parses_i2c_and_spi_only() {
        assert!("i2c".parse::<Transport>().is_ok());
        assert!("spi".parse::<Transport>().is_ok());
        assert!("uart".parse::<Transport>().is_err());
    }

    #[test]
    fn driver_requires_an_explicit_bus() {
        let cmd = New::try_parse_from(["new", "foo", "--driver=spi"]).unwrap();
        assert!(matches!(cmd.driver, Some(Transport::Spi)));
        // A bare `--driver` (no value) is rejected: the bus must be explicit.
        assert!(New::try_parse_from(["new", "foo", "--driver"]).is_err());
    }

    #[test]
    fn module_modes_conflict_with_each_other_and_project_modes() {
        assert!(New::try_parse_from(["new", "foo", "--driver=i2c", "--step"]).is_err());
        assert!(New::try_parse_from(["new", "foo", "--driver=i2c", "--firmware=esp32c6"]).is_err());
        assert!(New::try_parse_from(["new", "foo", "--step", "--pipeline"]).is_err());
    }
}
