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

" EDIT
set number
set expandtab
set shiftwidth=2
set tabstop=2

" KEYMAPS
inoremap jk <Esc>
" smart switch between windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
" <leader> keymaps
let mapleader="\<space>"
" vimrc edit & reload
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" GENERAL GUI SETTING
if has('gui_running')
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  set guifont=Ubuntu\ Mono:h16
endif

" VUNDLE
" run :PluginInstall to install plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" To install youcompleteme, you may need to execute
" '~/.vim/bundle/youcompleteme/install.py'
" And downloading this package may takes quite a long time, be patient :)
Plugin 'valloric/youcompleteme'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'posva/vim-vue'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'ayu-theme/ayu-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'heavenshell/vim-jsdoc'
call vundle#end()
filetype plugin indent on

"CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"JsDoc
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_return_description = 1
let g:jsdoc_underscore_private = 1
let g:jsdoc_tyep_hook = 1
let g:jsdoc_enable_es6 = 1

"vim vue
"see https://github.com/posva/vim-vue
autocmd FileType vue syntax sync fromstart

" More plugin gui setting
if has('gui_running')
    set termguicolors
    colorscheme one
    set background=light
    let g:airline_theme='light'
else
    colorscheme gruvbox
endif

