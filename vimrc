color desert
syntax on

set nocompatible
set number

set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent

set cursorline
set spell

set wildmenu
set hidden

set ignorecase
set smartcase

set splitright
set splitbelow

set clipboard=unnamedplus

set complete=.,w

function! TagFind(tag)
	execute 'vimgrep /' . a:tag . '\>/ ~/zet/data/*.md'
endfunction

command! -nargs=1 ZFindTag call TagFind(<f-args>)
command! ZFileName let @+ = expand("%:t") | echo "File name copied"

map <F2> :bp<CR>
imap <F2> <Esc>:bp<CR>
tmap <F2> <C-W>:bp<CR>

map <F3> :bn<CR>
imap <F3> <Esc>:bn<CR>
tmap <F3> <C-W>:bn<CR>

map <F4> :bd<CR>
imap <F4> <Esc>:bd<CR>

map <F5> :ls<CR>
imap <F5> <Esc>:ls<CR>
tmap <F5> <C-W>:ls<CR>

map <F7> :cp<CR>
imap <F7> <Esc>:cp<CR>
map <F8> :cn<CR>
imap <F8> <Esc>:cn<CR>

" useless
nnoremap <PageUp> <Nop>
nnoremap <PageDown> <Nop>
