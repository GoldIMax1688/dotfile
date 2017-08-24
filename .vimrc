set nu
set mouse=a
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"set ambiwidth=double
syntax on

set shell=/bin/bash

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/vim-airline/vim-airline.git'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'edkolev/promptline.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
filetype plugin indent on

let g:airline_theme="light"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
set laststatus=2

"let g:Powerline_symbols = 'fancy'

colorscheme Tomorrow

" Formatter
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
au BufWrite *.cpp :Autoformat
au BufWrite *.cc  :Autoformat

