#!/bin/bash

# Install Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Install Neovim
brew install nvim

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
