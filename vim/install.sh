#!/bin/bash

# Is Git is installed
command -v git >/dev/null 2>&1 || { echo >&2 "Git is required but it's not installed.  Aborting."; exit 1; }

installNvim=true

if [ "$installNvim" = FALSE ]; then
  
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  
  echo "Do you want to overwrite your .vimrc? [y/n]"
  read overwrite
  
  if [ "$overwrite" == "y" ] || [ "$overwrite" == "yes" ] || [ "$overwrite" == "" ]; then
  	echo "overwriting .vimrc"
  	cp vimrc ~/.vimrc
  
  	echo "Run vim and enter :BundleInstall command, this will install all plugins."
  	echo "If you get a error when running vim, please hit [enter] and run :BundleInstall"
  else
  	echo "skipping .vimrc"
  fi

else 

  if ! [ -x "$(command -v nvim)" ]; then
    if ! [ -x "$(command -v brew)"]; then
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi 

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

fi
