#!/usr/bin/env bash

set -eu

sudo apt update
sudo apt install tmux
BASHRC_LINE="alias tm='tmux attach || tmux new'"
if ! grep -qxF "$BASHRC_LINE" ~/.bashrc; then
    echo -e "$BASHRC_LINE\n" >> ~/.bashrc
    echo "Restart shell or reload config file."
fi
