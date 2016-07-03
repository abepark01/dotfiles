if has("gui_macvim")
  set lines=45
  set columns=150
endif

if has('unix')
  set t_Co=256
endif

let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

set background=dark
colorscheme Tomorrow-Night

set shiftwidth=2
set tabstop=2
set expandtab

set autoindent
set smartindent

set showmode

" Always show current position
set ruler
set relativenumber
set number
set numberwidth=5
set colorcolumn=80

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make backspace act as it should
set backspace=eol,start,indent

" Turn on the wild menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Ignore case when searching
set ignorecase

" When searching to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magin on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" how many tenths of a second to blink when matching brackets
set mat=2

" turn off annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

execute pathogen#infect()
syntax on
filetype plugin indent on

" Always show the last status line
set laststatus=2

" show command in bottom
set showcmd

" highlight current line
set cursorline

" fold based on indent
set foldmethod=syntax

" deepest fold is 10 levels
set foldnestmax=10

" don't fold by default
set nofoldenable

set foldlevel=1

" space open/closes folds
nnoremap <space> za

" za (toggle)
" zc (close)
" zo (open)

" move vertially by visual line
nnoremap j gj
nnoremap k gk

autocmd BufWritePre *.html,*.css,*.scss,*.js,*.py,*.rb,*.h,*.c,*.cpp :%s/\s\+$//e

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

" NERDTree ignore 
let NERDTreeIgnore=['\.pyc$', '\~$']

" Get off my lawn!
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>


" Split screen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" NERDTree
let NERDTreeShowHidden=1
