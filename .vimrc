syntax on
set number
syntax enable
filetype plugin indent on
set tabstop=2
set shiftwidth=2

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()

noremap j gj
noremap k gk

let g:go_fmt_command = "goimports"
colorscheme molokai
set showmatch 

