# LGA Cheat Sheet

Every alias in `git-lga.gitconfig`. Use them as `git <alias>`, or as the shell alias `g<alias>` (e.g. `git sts` or `gsts`).

## Add (`ad`)

| Alias | Command |
| ----- | ------- |
| `ad` | `git add` |
| `ada` | `git add .` |
| `adp` | `git add --patch` |
| `adu` | `git add --update` |

## Branch (`br`)

| Alias | Command |
| ----- | ------- |
| `br` | `git branch` |
| `brd` | `git branch --delete` |
| `brl` | `git branch --list` |
| `bra` | `git branch --all` |
| `brf` | `git branch --delete --force` |
| `brm` | `git branch --move` |
| `brs` | `git branch --show-current` |

## Commit (`cm`)

| Alias | Command |
| ----- | ------- |
| `cm` | `git commit` |
| `cmf` | `git commit --fixup` |
| `cma` | `git commit --amend` |
| `cmn` | `git commit --amend --no-edit` |
| `cmm` | `git commit --message` |

## Checkout / Switch / Restore

| Alias | Command |
| ----- | ------- |
| `ck` | `git checkout` |
| `sw` | `git switch` |
| `swc` | `git switch --create` |
| `rs` | `git restore` |
| `rsa` | `git restore .` |
| `rss` | `git restore --staged` |

## Diff (`df`)

| Alias | Command |
| ----- | ------- |
| `df` | `git diff` |
| `dfc` | `git diff --cached` |
| `dfi` | `git diff --ignore-all-space` |
| `dfw` | `git diff --word-diff` |
| `dfs` | `git diff --stat` |

## Fetch / Pull / Push

| Alias | Command |
| ----- | ------- |
| `ft` | `git fetch` |
| `ftp` | `git fetch --prune` |
| `fta` | `git fetch --all` |
| `pl` | `git pull` |
| `plh` | `git pull origin HEAD` |
| `plr` | `git pull --rebase` |
| `ps` | `git push` |
| `psf` | `git push --force-with-lease` |
| `psh` | `git push origin HEAD` |
| `pshf` | `git push origin HEAD --force-with-lease` |
| `psu` | `git push --set-upstream` |

## Log / Show

| Alias | Command |
| ----- | ------- |
| `lg` | `git log` |
| `lgh` | `git log HEAD` |
| `lgp` | `git log --patch` |
| `lgo` | `git log --graph --oneline --decorate --all` |
| `sh` | `git show --patch` |

## Merge / Rebase

| Alias | Command |
| ----- | ------- |
| `mg` | `git merge` |
| `mga` | `git merge --abort` |
| `mgc` | `git merge --continue` |
| `mgs` | `git merge --squash` |
| `rb` | `git rebase` |
| `rba` | `git rebase --abort` |
| `rbc` | `git rebase --continue` |
| `rbi` | `git rebase --interactive` |
| `rbo` | `git rebase --onto` |
| `rbs` | `git rebase --skip` |

## Stash (`sth`)

| Alias | Command |
| ----- | ------- |
| `sth` | `git stash` |
| `sthc` | `git stash clear` |
| `sthd` | `git stash drop` |
| `sthl` | `git stash list` |
| `stho` | `git stash pop` |
| `sthp` | `git stash push` |
| `stha` | `git stash apply` |
| `sths` | `git stash show --patch` |
| `sthu` | `git stash push --include-untracked` |

## Status (`st`)

| Alias | Command |
| ----- | ------- |
| `st` | `git status` |
| `sts` | `git status --short --branch` |

## Worktree (`wt`)

| Alias | Command |
| ----- | ------- |
| `wt` | `git worktree` |
| `wta` | `git worktree add` |
| `wtl` | `git worktree list` |
| `wtm` | `git worktree move` |
| `wtp` | `git worktree prune` |
| `wtr` | `git worktree remove` |

## Bisect (`bs`)

| Alias | Command |
| ----- | ------- |
| `bs` | `git bisect` |
| `bsb` | `git bisect bad` |
| `bsg` | `git bisect good` |
| `bsr` | `git bisect reset` |
| `bss` | `git bisect start` |

## Reflog (`rl`)

| Alias | Command |
| ----- | ------- |
| `rl` | `git reflog` |

## Submodule (`sm`)

| Alias | Command |
| ----- | ------- |
| `sm` | `git submodule` |
| `smu` | `git submodule update --init --recursive` |

## Utils

| Alias | Command |
| ----- | ------- |
| `bl` | `git blame` |
| `cfg` | `git config` |
| `cfgl` | `git config --list` |
| `cln` | `git clean` |
| `clf` | `git clean --force` |
| `clfd` | `git clean --force -d` |
| `clo` | `git clone` |
| `chp` | `git cherry-pick` |
| `chpa` | `git cherry-pick --abort` |
| `chpc` | `git cherry-pick --continue` |
| `chps` | `git cherry-pick --skip` |
| `ds` | `git describe` |
| `gp` | `git grep` |
| `in` | `git init` |
| `rt` | `git remote` |
| `rtv` | `git remote --verbose` |
| `rv` | `git revert` |
| `rva` | `git revert --abort` |
| `rvc` | `git revert --continue` |
| `tg` | `git tag` |
| `tgd` | `git tag --delete` |
| `rst` | `git reset` |
| `rsth` | `git reset --hard` |
| `rsts` | `git reset --soft` |
| `lga` | show all aliases |
