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
set relativenumber

set shell=/bin/bash

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'edkolev/promptline.vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'Chiel92/vim-autoformat'
Plug 'airblade/vim-gitgutter'
Plug 'oplatek/Conque-Shell'
Plug 'luochen1990/rainbow'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fireplace'
call plug#end()

let g:airline_theme="light"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 1
set laststatus=2

let g:promptline_theme = 'airline'
let g:promptline_preset = {
            \'a' : [ '$(~/.shelltools/path)']}

let g:tmuxline_preset = {
      \'a'    : '#(screenfetch -n | grep OS | cut -d m -f 4)',
      \'b'    : '',
      \'c'    : '',
      \'win'  : ['#I','#W'],
      \'cwin' : ['#I','#W'],
      \'x'    : '',
      \'y'    : ['T %R','UT #(uptime | cut -d " " -f 5 | cut -d , -f 1)'],
      \'z'    : ['#(whoami)','#(uname -n)'],
      \'options':{
      \'status-justify' : 'left'
      \}
      \}

"let g:Powerline_symbols = 'fancy'

"colorscheme Tomorrow

" Formatter
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
au BufWrite *.cpp :Autoformat
au BufWrite *.cc  :Autoformat

let g:rainbow_active = 1


