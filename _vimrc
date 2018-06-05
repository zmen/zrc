" BASIC
set nocompatible
set encoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gk2312
language messages zh_CN.utf-8
set nobackup
set nowb
set noswapfile

" APPEARANCE
syntax on
color dracula

" EDIT
set number
set expandtab
set shiftwidth=4
set tabstop=4

" KEYMAPS
inoremap jk <Esc>
" smart switch between windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
" <leader> keymaps
let mapleader="\<space>"
"VIMRC edit & reload
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" GUI SETTING
if has('gui_running')
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  set guifont=Anonymous\ Pro:h16,Monaco:h16
endif

" Vundle
" run :PluginInstall to install plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
call vundle#end()
filetype plugin indent on


