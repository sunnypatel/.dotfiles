install
	# vim
	make install-vim
	# tmux
	make install-tmux
  # alacritty
	make install-alacritty

install-vim
	make -f vimPack/makefile install

install-tmux
	make -f tmuxPack/makefile install

install-alacritty
	make -f alacritty/makefile install
