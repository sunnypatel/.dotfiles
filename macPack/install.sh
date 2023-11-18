#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tree
brew install tree
# Install Neovim
brew install nvim

# Install NvChad
# git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Install LunarNvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)


# Install LazyGit
brew install lazygit

# Install Mononoki Nerd font
mkdir -p ./.tmp_macpack
curl -fsSL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Mononoki.zip ./.tmp_macpack/nerd-fonts/
unzip ./.tmp_macpack/nerd-fonts/Mononoki.zip
