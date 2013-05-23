" use syntax highlighting
syntax on
 
" make backspace do what it should
"set backspace=eol,start,indent
 
" set tab = 4 spaces
set expandtab
set sw=2
set sts=2
set ts=2
 
" set tab = 2 spaces if ruby file
"autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
 
" fix splitting from opening in the wrong place
set splitright
set splitbelow

" fix auto-indent pasting
set paste

" use the mouse
set ttyfast
set mouse=a
set ttymouse=xterm2


" Vundle
set nocompatible  " be iMproved
filetype off      " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-rails'

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
