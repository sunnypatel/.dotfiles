#!/bin/bash


# Install node via nvm
if ! [ -x "$(command -v nvm)" ]; then
  echo 'nvm is not installed.' >&2
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
  exit 1
fi

# Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  echo 'Error: brew is not installed.' >&2
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  brew tap homebrew/cask
  
  # Install tree
  brew install tree

  exit 1
fi

if ! [ -x "$(command -v nvim)" ]; then
  echo 'Error: brew is not installed.' >&2
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Install Neovim
  brew install nvim

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

  # Install TokyoNight theme
  git clone https://github.com/folke/tokyonight.nvim.git ./.tmp/tokyonight/

  exit 1
fi

