#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

ZSHRC=$HOME/.zshrc
TMUX_CONF=$HOME/.tmux.conf
TMUX_CONF_LOCAL=$HOME/.tmux.conf.local
GITHUB_CONFIG=$HOME/.gitconfig
ALACRITTY_CONF=$HOME/.config/alacritty/alacritty.yml
LVIM_CONF_PATH=$HOME/.config/lvim
PAYPAL_CONF_PATH=$HOME/.config/paypal

# Links all dotfiles
ln -s $SCRIPT_DIR/.zshrc $ZSHRC
ln -s $SCRIPT_DIR/.tmux.conf $TMUX_CONF 
ln -s $SCRIPT_DIR/.tmux.conf.local $TMUX_CONF_LOCAL 
ln -s $SCRIPT_DIR/.gitconfig $GITHUB_CONFIG
ln -s $SCRIPT_DIR/.config/alacritty/alacritty.yml $ALACRITTY_CONF

# link all config folders
ln -s $SCRIPT_DIR/.config/lvim $LVIM_CONF_PATH
ln -s $SCRIPT_DIR/.config/paypal $PAYPAL_CONF_PATH 
