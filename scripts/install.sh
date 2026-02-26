#!/bin/bash
set -e

echo "[*] Installing packages..."
./scripts/packages.sh

echo "[*] Linking dotfiles..."
./scripts/symlinks.sh

echo "[✓] Setup complete. Reboot recommended."
