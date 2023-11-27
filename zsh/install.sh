#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR=$(pwd)

ln -s $SCRIPT_DIR/zshrc $HOME/.zshrc
