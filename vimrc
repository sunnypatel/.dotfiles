 set nocompatible               " be iMproved
 filetype off                   " required!
 

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...
 " NERDTree Pluin
 Bundle 'scrooloose/nerdtree'

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 " shortcut for new tab
 map <c-n> :tabnew<CR>
 " shortcut for nxt tab
 map <c-j> :tabn<CR>
 " shortcut for prev tab
 map <c-k> :tabp<CR>
 " shortcut to toggle  NERDTree
 map <c-d> :NERDTreeToggle<CR>
 
 " Start NERDTree automatically when vim startsup if no files were specified
 autocmd vimenter * if !argc() | NERDTree | endif
 " Close vim if the only window left open is a NERDTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
