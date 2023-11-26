#!/bin/bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"


ln -s $SCRIPT_DIR/tmux.conf $HOME/.tmux.conf
ln -s $SCRIPT_DIR/tmux.conf.local $HOME/.tmux.conf.local
