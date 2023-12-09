#!/usr/bin/env bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

if ! [ -x "$(command -v nvim)" ]; then
  echo 'nvim not found ... installing' >&2

  # Install Neovim
  brew install nvim

  # --- LunarVim prerequisites start

  # Install LazyGit
  brew install lazygit

  # Install Trash
  brew install trash

  # Install Rust 
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  # Install Pip
  python get-pip.py

  # Install Mononoki Nerd font
  brew tap homebrew/cask-fonts
  brew cask install font-mononoki-nerd-font

  # --- LunarVim prerequisites end

  # Install LunarNvim
  LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

  # Install Prettier
  if [ -x "$(command -v npm)"]; then
    npm i -g prettier @fsouza/prettierd
  fi
  exit 1
fi
