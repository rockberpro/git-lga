# ==============================================================================
# LGA — PowerShell shell functions (g-prefix)
# This file is sourced automatically by setup.ps1 via your $PROFILE.
# ==============================================================================

# --- ADD ---
function gad  { git ad @args }
function gada { git ada @args }
function gadu { git adu @args }

# --- BRANCH ---
function gbr  { git br @args }
function gbrd { git brd @args }
function gbrl { git brl @args }
function gbrs { git brs @args }

# --- COMMIT ---
function gcm  { git cm @args }
function gcmf { git cmf @args }
function gcma { git cma @args }
function gcmn { git cmn @args }
function gcmm { git cmm @args }

# --- CHECKOUT / SWITCH / RESTORE ---
function gck  { git ck @args }
function gsw  { git sw @args }
function gswc { git swc @args }
function grs  { git rs @args }
function grsa { git rsa @args }
function grss { git rss @args }

# --- DIFF ---
function gdf  { git df @args }
function gdfc { git dfc @args }
function gdfi { git dfi @args }
function gdfw { git dfw @args }

# --- FETCH / PULL / PUSH ---
function gft   { git ft @args }
function gftp  { git ftp @args }
function gpl   { git pl @args }
function gplh  { git plh @args }
function gps   { git ps @args }
function gpsf  { git psf @args }
function gpsh  { git psh @args }
function gpshf { git pshf @args }

# --- LOG / SHOW ---
function glg  { git lg @args }
function glgh { git lgh @args }
function glgp { git lgp @args }
function glgo { git lgo @args }
function gsh  { git sh @args }

# --- MERGE / REBASE ---
function gmg  { git mg @args }
function gmga { git mga @args }
function gmgc { git mgc @args }
function gmgs { git mgs @args }
function grb  { git rb @args }
function grba { git rba @args }
function grbc { git rbc @args }
function grbi { git rbi @args }
function grbo { git rbo @args }

# --- STASH ---
function gsth  { git sth @args }
function gsthc { git sthc @args }
function gsthd { git sthd @args }
function gsthl { git sthl @args }
function gstho { git stho @args }
function gsthp { git sthp @args }
function gstha { git stha @args }
function gsths { git sths @args }

# --- STATUS ---
function gst  { git st @args }
function gsts { git sts @args }

# --- UTILS ---
function gbl   { git bl @args }
function gcfg  { git cfg @args }
function gcfgl { git cfgl @args }
function gcln  { git cln @args }
function gclf  { git clf @args }
function gclo  { git clo @args }
function gcha  { git cha @args }
function gchc  { git chc @args }
function gchp  { git chp @args }
function gds   { git ds @args }
function ggp   { git gp @args }
function gin   { git in @args }
function grt   { git rt @args }
function grv   { git rv @args }
function gtg   { git tg @args }
function grst  { git rst @args }
function glga  { git lga @args }

# ==============================================================================
# PowerShell completion for the functions above (requires posh-git)
# Each function is "g" + a git alias, so we strip the leading "g" and let
# posh-git complete the rewritten "git <alias> ..." line.
# ==============================================================================
$GitLgaCompleter = {
    param($wordToComplete, $commandAst, $cursorPosition)
    if (-not (Get-Command Expand-GitCommand -ErrorAction Ignore)) { return }
    $fn   = $commandAst.CommandElements[0].Value
    $rest = ($commandAst.CommandElements | Select-Object -Skip 1 | ForEach-Object { $_.Extent.Text }) -join ' '
    $cmd  = "git " + $fn.Substring(1)
    if ($rest) { $cmd += " " + $rest }
    # Extent.Text drops the trailing space; re-add it when the cursor is on a fresh arg.
    if (-not $wordToComplete) { $cmd += " " }
    Expand-GitCommand $cmd
}

$GitLgaFns = @(
    'gad','gada','gadu',
    'gbr','gbrd','gbrl','gbrs',
    'gcm','gcmf','gcma','gcmn','gcmm',
    'gck','gsw','gswc','grs','grsa','grss',
    'gdf','gdfc','gdfi','gdfw',
    'gft','gftp','gpl','gplh','gps','gpsf','gpsh','gpshf',
    'glg','glgh','glgp','glgo','gsh',
    'gmg','gmga','gmgc','gmgs','grb','grba','grbc','grbi','grbo',
    'gsth','gsthc','gsthd','gsthl','gstho','gsthp','gstha','gsths',
    'gst','gsts',
    'gbl','gcfg','gcfgl','gcln','gclf','gclo','gcha','gchc','gchp',
    'gds','ggp','gin','grt','grv','gtg','grst','glga'
)

Register-ArgumentCompleter -CommandName $GitLgaFns -ScriptBlock $GitLgaCompleter
