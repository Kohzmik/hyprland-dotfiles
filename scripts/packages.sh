#!/bin/bash
set -e

sudo pacman -Syu --needed - < system/pacman.txt

if ! command -v yay &>/dev/null; then
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si
fi

yay -S --needed - < system/aur.txt
