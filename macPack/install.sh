#!/bin/bash

# Install node via nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap homebrew/cask

# Install tree
brew install tree
# Install Neovim
brew install nvim

# Install NvChad
# git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# --- LunarVim prerequisites start

# Install LazyGit
brew install lazygit

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


