# ==============================================================================
# LGA — Bash shell aliases (g-prefix)
# Source this file from ~/.bashrc:
#   echo "source ~/path/to/git-lga.bashrc" >> ~/.bashrc
# ==============================================================================

# --- ADD ---
alias gad='git ad'
alias gada='git ada'
alias gadu='git adu'

# --- BRANCH ---
alias gbr='git br'
alias gbrd='git brd'
alias gbrl='git brl'
alias gbrs='git brs'

# --- COMMIT ---
alias gcm='git cm'
alias gcmf='git cmf'
alias gcma='git cma'
alias gcmn='git cmn'
alias gcmm='git cmm'

# --- CHECKOUT / SWITCH / RESTORE ---
alias gck='git ck'
alias gsw='git sw'
alias gswc='git swc'
alias grs='git rs'
alias grsa='git rsa'
alias grss='git rss'

# --- DIFF ---
alias gdf='git df'
alias gdfc='git dfc'
alias gdfi='git dfi'
alias gdfw='git dfw'

# --- FETCH / PULL / PUSH ---
alias gft='git ft'
alias gftp='git ftp'
alias gpl='git pl'
alias gplh='git plh'
alias gps='git ps'
alias gpsf='git psf'
alias gpsh='git psh'
alias gpshf='git pshf'

# --- LOG / SHOW ---
alias glg='git lg'
alias glgh='git lgh'
alias glgp='git lgp'
alias glgo='git lgo'
alias gsh='git sh'

# --- MERGE / REBASE ---
alias gmg='git mg'
alias gmga='git mga'
alias gmgc='git mgc'
alias gmgs='git mgs'
alias grb='git rb'
alias grba='git rba'
alias grbc='git rbc'
alias grbi='git rbi'
alias grbo='git rbo'

# --- STASH ---
alias gsth='git sth'
alias gsthc='git sthc'
alias gsthd='git sthd'
alias gsthl='git sthl'
alias gstho='git stho'
alias gsthp='git sthp'
alias gstha='git stha'
alias gsths='git sths'

# --- STATUS ---
alias gst='git st'
alias gsts='git sts'

# --- UTILS ---
alias gbl='git bl'
alias gcfg='git cfg'
alias gcfgl='git cfgl'
alias gcln='git cln'
alias gclf='git clf'
alias gclo='git clo'
alias gcha='git cha'
alias gchc='git chc'
alias gchp='git chp'
alias gds='git ds'
alias ggp='git gp'
alias gin='git in'
alias grt='git rt'
alias grv='git rv'
alias gtg='git tg'
alias grst='git rst'
alias glga='git lga'

# ==============================================================================
# Bash completion for aliases above
# Requires git-completion.bash (usually sourced via /etc/bash_completion.d/git)
# ==============================================================================

# git-completion is frequently lazy-loaded (only on the first `git <Tab>`), so
# when this file is sourced from ~/.bashrc __git_complete may not exist yet.
# Force it to load, otherwise the whole block below is skipped and nothing hooks.
# Source the completion file directly: the dynamic loader (_completion_loader)
# returns 124 without defining __git_complete on the first call, so it is only a
# last resort here.
if ! declare -F __git_complete > /dev/null 2>&1; then
    for _lga_f in /usr/share/bash-completion/completions/git \
                  /etc/bash_completion.d/git \
                  /usr/share/git-core/git-completion.bash \
                  /usr/local/share/git-core/contrib/completion/git-completion.bash; do
        [ -r "$_lga_f" ] && . "$_lga_f"
        declare -F __git_complete > /dev/null 2>&1 && break
    done
    unset _lga_f
fi
if ! declare -F __git_complete > /dev/null 2>&1; then
    declare -F _completion_loader > /dev/null 2>&1 && _completion_loader git
fi

# Register only when the target completion function exists (versions differ,
# e.g. _git_blame is absent in some) so a missing one falls back to default
# completion instead of printing an error.
_lga_complete() { declare -F "$2" > /dev/null 2>&1 && __git_complete "$@"; }

if declare -f __git_complete > /dev/null 2>&1; then
    # ADD
    _lga_complete gad  _git_add
    _lga_complete gada _git_add
    _lga_complete gadu _git_add

    # BRANCH
    _lga_complete gbr  _git_branch
    _lga_complete gbrd _git_branch
    _lga_complete gbrl _git_branch
    _lga_complete gbrs _git_branch

    # COMMIT
    _lga_complete gcm  _git_commit
    _lga_complete gcmf _git_commit
    _lga_complete gcma _git_commit
    _lga_complete gcmn _git_commit
    _lga_complete gcmm _git_commit

    # CHECKOUT / SWITCH / RESTORE
    _lga_complete gck  _git_checkout
    _lga_complete gsw  _git_switch
    _lga_complete gswc _git_switch
    _lga_complete grs  _git_restore
    _lga_complete grsa _git_restore
    _lga_complete grss _git_restore

    # DIFF
    _lga_complete gdf  _git_diff
    _lga_complete gdfc _git_diff
    _lga_complete gdfi _git_diff
    _lga_complete gdfw _git_diff

    # FETCH / PULL / PUSH
    _lga_complete gft  _git_fetch
    _lga_complete gftp _git_fetch
    _lga_complete gpl  _git_pull
    _lga_complete gplh _git_pull
    _lga_complete gps  _git_push
    _lga_complete gpsf _git_push
    _lga_complete gpsh _git_push
    _lga_complete gpshf _git_push

    # LOG / SHOW
    _lga_complete glg  _git_log
    _lga_complete glgh _git_log
    _lga_complete glgp _git_log
    _lga_complete glgo _git_log
    _lga_complete gsh  _git_show

    # MERGE / REBASE
    _lga_complete gmg  _git_merge
    _lga_complete gmga _git_merge
    _lga_complete gmgc _git_merge
    _lga_complete gmgs _git_merge
    _lga_complete grb  _git_rebase
    _lga_complete grba _git_rebase
    _lga_complete grbc _git_rebase
    _lga_complete grbi _git_rebase
    _lga_complete grbo _git_rebase

    # STASH
    _lga_complete gsth  _git_stash
    _lga_complete gsthc _git_stash
    _lga_complete gsthd _git_stash
    _lga_complete gsthl _git_stash
    _lga_complete gstho _git_stash
    _lga_complete gsthp _git_stash
    _lga_complete gstha _git_stash
    _lga_complete gsths _git_stash

    # STATUS
    _lga_complete gst  _git_status
    _lga_complete gsts _git_status

    # UTILS
    _lga_complete gbl  _git_blame
    _lga_complete gcfg _git_config
    _lga_complete gcfgl _git_config
    _lga_complete gcln _git_clean
    _lga_complete gclf _git_clean
    _lga_complete gclo _git_clone
    _lga_complete gcha _git_cherry_pick
    _lga_complete gchc _git_cherry_pick
    _lga_complete gchp _git_cherry_pick
    _lga_complete gds  _git_describe
    _lga_complete ggp  _git_grep
    _lga_complete gin  _git_init
    _lga_complete grt  _git_remote
    _lga_complete grv  _git_revert
    _lga_complete gtg  _git_tag
    _lga_complete grst _git_reset
fi
