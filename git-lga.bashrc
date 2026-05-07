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
if declare -f __git_complete > /dev/null 2>&1; then
    # ADD
    __git_complete gad  _git_add
    __git_complete gada _git_add
    __git_complete gadu _git_add

    # BRANCH
    __git_complete gbr  _git_branch
    __git_complete gbrd _git_branch
    __git_complete gbrl _git_branch
    __git_complete gbrs _git_branch

    # COMMIT
    __git_complete gcm  _git_commit
    __git_complete gcmf _git_commit
    __git_complete gcma _git_commit
    __git_complete gcmn _git_commit
    __git_complete gcmm _git_commit

    # CHECKOUT / SWITCH / RESTORE
    __git_complete gck  _git_checkout
    __git_complete gsw  _git_switch
    __git_complete gswc _git_switch
    __git_complete grs  _git_restore
    __git_complete grsa _git_restore
    __git_complete grss _git_restore

    # DIFF
    __git_complete gdf  _git_diff
    __git_complete gdfc _git_diff
    __git_complete gdfi _git_diff
    __git_complete gdfw _git_diff

    # FETCH / PULL / PUSH
    __git_complete gft  _git_fetch
    __git_complete gftp _git_fetch
    __git_complete gpl  _git_pull
    __git_complete gplh _git_pull
    __git_complete gps  _git_push
    __git_complete gpsf _git_push
    __git_complete gpsh _git_push
    __git_complete gpshf _git_push

    # LOG / SHOW
    __git_complete glg  _git_log
    __git_complete glgh _git_log
    __git_complete glgp _git_log
    __git_complete glgo _git_log
    __git_complete gsh  _git_show

    # MERGE / REBASE
    __git_complete gmg  _git_merge
    __git_complete gmga _git_merge
    __git_complete gmgc _git_merge
    __git_complete gmgs _git_merge
    __git_complete grb  _git_rebase
    __git_complete grba _git_rebase
    __git_complete grbc _git_rebase
    __git_complete grbi _git_rebase
    __git_complete grbo _git_rebase

    # STASH
    __git_complete gsth  _git_stash
    __git_complete gsthc _git_stash
    __git_complete gsthd _git_stash
    __git_complete gsthl _git_stash
    __git_complete gstho _git_stash
    __git_complete gsthp _git_stash
    __git_complete gstha _git_stash
    __git_complete gsths _git_stash

    # STATUS
    __git_complete gst  _git_status
    __git_complete gsts _git_status

    # UTILS
    __git_complete gbl  _git_blame
    __git_complete gcfg _git_config
    __git_complete gcfgl _git_config
    __git_complete gcln _git_clean
    __git_complete gclf _git_clean
    __git_complete gclo _git_clone
    __git_complete gcha _git_cherry_pick
    __git_complete gchc _git_cherry_pick
    __git_complete gchp _git_cherry_pick
    __git_complete gds  _git_describe
    __git_complete ggp  _git_grep
    __git_complete gin  _git_init
    __git_complete grt  _git_remote
    __git_complete grv  _git_revert
    __git_complete gtg  _git_tag
    __git_complete grst _git_reset
fi
