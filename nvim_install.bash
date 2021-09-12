#!/usr/bin/env bash

set -eu

BIN_PATH="$HOME/.local/bin"
mkdir -p "$BIN_PATH"
cd "$BIN_PATH"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
ln -s nvim.appimage nvim
ln -s nvim vim
nvim -c "PlugInstall|qa"
if ! grep -q "PATH=.*\.local/bin" ~/.bashrc; then
    echo -e "export PATH=\"$BIN_PATH:\$PATH\"\n" >> ~/.bashrc
    echo "Restart shell or reload config file to access nvim."
fi

if ! grep -qxF "export EDITOR=\"nvim\"" ~/.bashrc; then
    echo -e "export EDITOR=\"nvim\"\n" >> ~/.bashrc
fi
