set nocompatible

set hidden
set title "change the terminal's title

set nobackup
set noswapfile
set nu!
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

set foldenable "enable folding
set foldlevelstart=99 "start out with everythin unfold

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

"Enter into split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Disable highlight after search
nnoremap <leader><space> :noh<cr>

" Yanking to the end of the line
nnoremap Y y$

"Vundle Settings
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'klen/python-mode'
Plugin 'jmcantrell/vim-virtualenv'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on "required

"Airline
set laststatus=2
set noshowmode
let g:airline_theme='molokai'
"let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tagbar#enabled = 1

"NERDTree
map <F2> :NERDTreeToggle<CR> 

"Tagbar
nmap <F8> :TagbarToggle<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme molokai
