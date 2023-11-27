install: install-mac install-zsh install-vim install-tmux install-alacritty

install-mac:
	make -f mac/makefile install

install-vim:
	make -f vim/makefile install

install-tmux:
	make -f tmux/makefile install

install-alacritty:
	make -f alacritty/makefile install

install-zsh:
	make -f zsh/makefile install

