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

set ignorecase
set smartcase

"Show matching brackets
set showmatch

"Use Unix as the standard file type
set ffs=unix,dos,mac

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

let mapleader=' '
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

" sudo write
cmap w!! w !sudo tee >/dev/null %

" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'w0rp/ale'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

set laststatus=2
set showtabline=2
set noshowmode

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

map <leader>n :NERDTreeToggle<CR>
nmap <leader>tb :TagbarToggle<CR>

let g:deoplete#enable_at_startup = 1

nnoremap <leader>f :Files<CR>
nnoremap <leader>rg :Rg<CR>

let g:vim_markdown_folding_disabled = 1
