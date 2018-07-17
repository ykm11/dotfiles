set number
syntax on
set tabstop=4

set t_Co=256
autocmd ColorScheme * highlight Visual ctermfg=14 guifg=#000000
autocmd ColorScheme * highlight String ctermfg=84 guifg=#000000
autocmd ColorScheme * highlight Comment ctermfg=227 guifg=#000000

colorscheme molokai

noremap j gj
noremap k gk

set shiftwidth=4
set expandtab
set showmatch 
set nowritebackup
set nobackup
set noswapfile
"set textwidth=0
set colorcolumn=80

let g:go_fmt_command = "goimports"

nnoremap <silent><C-e> :NERDTreeToggle<CR>
let g:deoplete#enable_at_startup = 1

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/Haruka/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/Haruka/.cache/dein')
  call dein#begin('/Users/Haruka/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/Haruka/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  call dein#add('scrooloose/nerdtree')

  call dein#add('Yggdroot/indentLine')

  call dein#add('Shougo/deoplete.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

