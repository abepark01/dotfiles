let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

set number
set showcmd
set cursorline
set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set backspace=eol,start,indent

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set lazyredraw
set magic

set nobackup
set nowb
set noswapfile

set autoread
set tabstop=2
set shiftwidth=2
set expandtab

set foldenable
set foldmethod=marker
set foldlevelstart=0
nnoremap <space> za
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let go_highlight_structs = 1
let go_highlight_operators = 1
let go_highlight_build_constraints = 1
colorscheme molokai
set background=dark
