#!/bin/bash

command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

# Git is installed
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#git clone https://github.com/gmarik/vundle.git ~/testVimPack

echo "Do you want to overwrite your .vimrc? [y/n]"
read overwrite

if [ "$overwrite" == "y" ] || [ "$overwrite" == "yes" ] || [ "$overwrite" == "" ]; then
	echo "overwriting .vimrc"
	cp vimrc ~/.vimrc

	echo "Run vim and enter :BundleInstall command, this will install all plugins."
else
	echo "skipping .vimrc"
fi


