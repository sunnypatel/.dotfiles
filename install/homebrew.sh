#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

if ! [ -x "$(command -v brew)" ]; then
  echo 'brew is not found ... installing' >&2
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # --- Brew packages ---
  brew tap homebrew/cask
  brew install tmux
  brew install the_silver_searcher
  brew install tree

  exit 1
else
  echo 'brew already installed'
fi
