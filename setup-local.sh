#!/bin/bash

set -e

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

INSTALL_PATH="$HOME/.git-lga.gitconfig"
HELP_PATH="$HOME/.git-lga-help.sh"
BASHRC_PATH="$HOME/.git-lga.bashrc"

cp "$SRC_DIR/git-lga.gitconfig" "$INSTALL_PATH"

if ! git config --global --get-all include.path | grep -qF "$INSTALL_PATH"; then
    git config --global --add include.path "$INSTALL_PATH"
fi

cp "$SRC_DIR/git-lga-help.sh" "$HELP_PATH"
chmod +x "$HELP_PATH"

cp "$SRC_DIR/git-lga.bashrc" "$BASHRC_PATH"

if ! grep -qF "$BASHRC_PATH" "$HOME/.bashrc"; then
    echo "source $BASHRC_PATH" >> "$HOME/.bashrc"
fi

echo "git-lga installed: $INSTALL_PATH"
echo "git-lga help installed: $HELP_PATH"
echo "git-lga bashrc installed: $BASHRC_PATH"
