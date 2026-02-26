#!/bin/bash
set -e

DOTFILES="$HOME/dotfiles/.config"
TARGET="$HOME/.config"

mkdir -p "$TARGET"

for item in "$DOTFILES"/*; do
    name=$(basename "$item")
    ln -sf "$item" "$TARGET/$name"
done

echo "[+] Configs linked"
