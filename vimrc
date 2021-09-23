set viminfo=
if has("gui_macvim") || has("gui_running")
  set lines=45
  set columns=150
endif

if has('unix')
  set t_Co=256
endif

command! W :w

let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
inoremap jj <Esc>


set pastetoggle=<F2>
set shiftwidth=2
set shiftround
set tabstop=2
set expandtab

set showmode

" Always show current position
set ruler
set relativenumber
set number
set numberwidth=5
set colorcolumn=80

" Make backspace act as it should
set backspace=eol,start,indent

" Turn on the wild menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc


" A buffer becomes hidden when it is abandoned
set hid

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

" move vertically by visual line
nnoremap j gj
nnoremap k gk

autocmd BufWritePre *.html,*.css,*.scss,*.js,*.py,*.rb,*.h,*.c,*.cpp :%s/\s\+$//e

let g:jsx_ext_required = 0

" NERDTree ignore
let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeShowHidden=1
noremap <leader>r :NERDTreeFind<CR>

" Split screen
nnoremap <C-j> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Load local settings (before loading bundles)
if filereadable(expand("~/.vimrc.before.local"))
  source ~/.vimrc.before.local
elseif has("win32") && filereadable(expand("$HOME/vimfiles/vimrc.before.local"))
 source $HOME/vimfiles/vimrc.before.local
endif

" Load bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
elseif has("win32") && filereadable(expand("$HOME/vimfiles/vimrc.bundles"))
  source $HOME/vimfiles/vimrc.bundles
endif

" Load local settings
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
elseif has("win32") && filereadable(expand("$HOME/vimfiles/vimrc.local"))
  source $HOME/vimfiles/vimrc.local
endif

" ctrlp settings
let g:ctrlp_custom_ignore = 'node_modules'

" The Silver Searcher
if executable('ag')
  " use ag ove grep
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ackprg='ag --vimgrep -s'

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


let g:closetag_filenames = "*.js,*.jsx,*.html,*.html.erb,*.php,*.hbs"

let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_eslint_use_global = 1
let g:ale_disable_lsp = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" testing extra-powerline-symbols

" set font terminal font or set gui vim font
" to a Nerd Font (https://github.com/ryanoasis/nerd-fonts):
set guifont=DroidSansMono\ Nerd\ Font\ 12

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
