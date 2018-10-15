set nocompatible

set nobackup
set noswapfile
set noundofile
set nu
set cursorline
set ruler
set autoread
set t_vb=
set t_Co=256
set updatetime=250

syntax enable
syntax on

"Be smart when using tabs
set smarttab
"Use spaces instead of tabs
set expandtab
"1 tab = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

set autoindent "Auto indent
set smartindent "Smart indent
set nowrap "No wrap line 

set incsearch "increase search
set hlsearch "highlight search result

set smartcase

"Show matching brackets
set showmatch

"Use Unix as the standard file type
set ffs=unix,dos,mac

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

let mapleader=','
nnoremap ; :
noremap H _
noremap L $
nnoremap j gj
nnoremap k gk

inoremap jk <esc>

"disable all arrow keys
map <up> <nop>
map <left> <nop>
map <right> <nop>
map <down> <nop>

nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>wq :wq!<CR>

"Enter into split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Disable highlight after search
nnoremap <leader><space> :noh<cr>

" Yanking to the end of the line
nnoremap Y y$

" Vundle settings
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
