#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR=$(pwd)

$SCRIPT_DIR/zsh/install.sh
$SCRIPT_DIR/tmux/install.sh
$SCRIPT_DIR/alacritty/install.sh
$SCRIPT_DIR/git/install.sh
