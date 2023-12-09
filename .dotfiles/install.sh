#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

# Links all dotfiles
ln -s $SCRIPT_DIR/.config/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
ln -s $SCRIPT_DIR/.config/lvim $HOME/.config/lvim
