install
	make install-mac
	make install-vim
	make install-tmux
	make install-alacritty

install-mac
	make -f mac/makefile install

install-vim
	make -f vim/makefile install

install-tmux
	make -f tmux/makefile install

install-alacritty
	make -f alacritty/makefile install

