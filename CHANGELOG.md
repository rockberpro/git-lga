# Changelog

## [0.3.0] - 2026-10-01

### Added

- Bisect aliases: `bs`, `bsb` bad, `bsg` good, `bsr` reset, `bss` start
- `rl` reflog
- Submodule aliases: `sm`, `smu` update --init --recursive
- Reset variants: `rsth` --hard, `rsts` --soft
- Revert variants: `rva` --abort, `rvc` --continue
- `adp` add --patch, `bra` branch --all, `brf` branch --delete --force, `brm` branch --move
- `dfs` diff --stat, `fta` fetch --all, `plr` pull --rebase, `psu` push --set-upstream
- `rbs` rebase --skip, `chps` cherry-pick --skip, `sthu` stash push --include-untracked
- `clfd` clean --force -d, `rtv` remote --verbose, `tgd` tag --delete
- `CHEATSHEET.md` with every alias

### Changed

- **Breaking:** renamed `cha` to `chpa` (cherry-pick --abort) and `chc` to `chpc` (cherry-pick --continue) so they share the `chp` prefix. The old names are gone; shell aliases `gcha`/`gchc` are now `gchpa`/`gchpc`

## [0.2.0] - 2026-10-01

### Added

- Worktree aliases: `wt`, `wta` add, `wtl` list, `wtm` move, `wtp` prune, `wtr` remove (plus `g`-prefixed shell aliases with completion)

## [0.1.3] - 2026-04-09

### Changed

- Renamed `dfw` alias to `dfi` (diff --ignore-all-space) and `dfwd` to `dfw` (diff --word-diff)

## [0.1.2] - 2026-04-09

### Changed

- Added setup details to README

## [0.1.1] - 2026-04-09

### Changed

- Renamed `scb` alias to `brs` (branch --show-current) to follow the `br` prefix pattern

## [0.1.0] - 2026-04-09

### Added

- Rebranded as **LGA — Logical Git Aliases**
- Project logo
- `git lga` built-in alias to display all aliases in a formatted table
- `setup.ps1` for native Windows (PowerShell) installation
- Uninstall instructions in README

### Changed

- Renamed `git-aliases.gitconfig` to `git-lga.gitconfig`
- Renamed `git-aliases-help.sh` to `git-lga-help.sh`
- Renamed `sga` alias to `lga`
- Revamped README with pattern explanation, install for all platforms, and differentiation section
- Translated all code comments to English

## [0.0.3] - 2026-04-06

### Changed

- Help display now uses box-drawing characters with ANSI colors
- Alias list is read dynamically from `git config` instead of being hardcoded

## [0.0.2] - 2026-04-02

### Added

- `git sga` help command to list all aliases in the terminal
- `setup.sh` one-line installer with automatic gitconfig include
- New aliases: `scb`, `dfi`, `cmf`, `cmn`, `rbo`, `sthp`, `stha`, `sths`

### Changed

- README translated to English
- Reorganized aliases with consistent prefix-based naming

## [0.0.1] - 2025-09-09

### Added

- Initial release with core git aliases
- README with alias reference table
