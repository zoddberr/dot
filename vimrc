set nocompatible

set bg=dark
set notermguicolors

set wildmenu
set clipboard=unnamedplus

set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

set splitright
set splitbelow

set number

syntax on

command! FileNameCP let @+ = expand("%:t") | echo "File name copied"
command! SpellWords set spell spelllang=en_us
