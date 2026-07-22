$ErrorActionPreference = "Stop"

$SrcDir = Split-Path -Parent $MyInvocation.MyCommand.Path

$InstallPath = "$HOME\.git-lga.gitconfig"
$HelpPath = "$HOME\.git-lga-help.sh"
$Ps1Path = "$HOME\.git-lga.ps1"

Copy-Item "$SrcDir\git-lga.gitconfig" $InstallPath -Force

$includes = git config --global --get-all include.path 2>$null
if ($includes -notcontains $InstallPath) {
    git config --global --add include.path $InstallPath
}

Copy-Item "$SrcDir\git-lga-help.sh" $HelpPath -Force
Copy-Item "$SrcDir\git-lga.ps1" $Ps1Path -Force

if (!(Test-Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force | Out-Null
}

$sourceLine = ". `"$Ps1Path`""
if (!(Select-String -Path $PROFILE -SimpleMatch $Ps1Path -Quiet)) {
    Add-Content -Path $PROFILE -Value $sourceLine
}

Write-Host "git-lga installed: $InstallPath"
Write-Host "git-lga help installed: $HelpPath"
Write-Host "git-lga ps1 installed: $Ps1Path"
