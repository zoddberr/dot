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

function! TagFind(tag)
	execute 'vimgrep /' . a:tag . '/ ~/zet/data/*.md'
endfunction

command! ZFileName let @+ = expand("%:t") | echo "File name copied"
command! -nargs=1 ZFindTag call TagFind(<f-args>)

command! SpellWords set spell spelllang=en_us
