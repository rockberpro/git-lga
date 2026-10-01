# ==============================================================================
# LGA — PowerShell shell functions (g-prefix)
# This file is sourced automatically by setup.ps1 via your $PROFILE.
# ==============================================================================

# --- ADD ---
function gad  { git ad @args }
function gada { git ada @args }
function gadp { git adp @args }
function gadu { git adu @args }

# --- BRANCH ---
function gbr  { git br @args }
function gbrd { git brd @args }
function gbrl { git brl @args }
function gbra { git bra @args }
function gbrf { git brf @args }
function gbrm { git brm @args }
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
function gdfs { git dfs @args }

# --- FETCH / PULL / PUSH ---
function gft   { git ft @args }
function gftp  { git ftp @args }
function gfta  { git fta @args }
function gpl   { git pl @args }
function gplh  { git plh @args }
function gplr  { git plr @args }
function gps   { git ps @args }
function gpsf  { git psf @args }
function gpsh  { git psh @args }
function gpshf { git pshf @args }
function gpsu  { git psu @args }

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
function grbs { git rbs @args }

# --- STASH ---
function gsth  { git sth @args }
function gsthc { git sthc @args }
function gsthd { git sthd @args }
function gsthl { git sthl @args }
function gstho { git stho @args }
function gsthp { git sthp @args }
function gstha { git stha @args }
function gsths { git sths @args }
function gsthu { git sthu @args }

# --- STATUS ---
function gst  { git st @args }
function gsts { git sts @args }

# --- WORKTREE ---
function gwt  { git wt @args }
function gwta { git wta @args }
function gwtl { git wtl @args }
function gwtm { git wtm @args }
function gwtp { git wtp @args }
function gwtr { git wtr @args }

# --- BISECT ---
function gbs   { git bs @args }
function gbsb  { git bsb @args }
function gbsg  { git bsg @args }
function gbsr  { git bsr @args }
function gbss  { git bss @args }

# --- REFLOG ---
function grl   { git rl @args }

# --- SUBMODULE ---
function gsm   { git sm @args }
function gsmu  { git smu @args }

# --- UTILS ---
function gbl   { git bl @args }
function gcfg  { git cfg @args }
function gcfgl { git cfgl @args }
function gcln  { git cln @args }
function gclf  { git clf @args }
function gclfd { git clfd @args }
function gclo  { git clo @args }
function gchp  { git chp @args }
function gchpa { git chpa @args }
function gchpc { git chpc @args }
function gchps { git chps @args }
function gds   { git ds @args }
function ggp   { git gp @args }
function gin   { git in @args }
function grt   { git rt @args }
function grtv  { git rtv @args }
function grv   { git rv @args }
function grva  { git rva @args }
function grvc  { git rvc @args }
function gtg   { git tg @args }
function gtgd  { git tgd @args }
function grst  { git rst @args }
function grsth { git rsth @args }
function grsts { git rsts @args }
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
    'gad','gada','gadp','gadu',
    'gbr','gbrd','gbrl','gbra','gbrf','gbrm','gbrs',
    'gcm','gcmf','gcma','gcmn','gcmm',
    'gck','gsw','gswc','grs','grsa','grss',
    'gdf','gdfc','gdfi','gdfw','gdfs',
    'gft','gftp','gfta','gpl','gplh','gplr','gps','gpsf','gpsh','gpshf','gpsu',
    'glg','glgh','glgp','glgo','gsh',
    'gmg','gmga','gmgc','gmgs','grb','grba','grbc','grbi','grbo','grbs',
    'gsth','gsthc','gsthd','gsthl','gstho','gsthp','gstha','gsths','gsthu',
    'gst','gsts',
    'gwt','gwta','gwtl','gwtm','gwtp','gwtr',
    'gbs','gbsb','gbsg','gbsr','gbss','grl','gsm','gsmu',
    'gbl','gcfg','gcfgl','gcln','gclf','gclfd','gclo','gchp','gchpa','gchpc','gchps',
    'gds','ggp','gin','grt','grtv','grv','grva','grvc','gtg','gtgd','grst','grsth','grsts','glga'
)

Register-ArgumentCompleter -CommandName $GitLgaFns -ScriptBlock $GitLgaCompleter
