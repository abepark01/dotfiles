set viminfo=
if has("gui_macvim") || has("gui_running")
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

" Height of the command bar
set cmdheight=2

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

" move vertially by visual line
nnoremap j gj
nnoremap k gk

autocmd BufWritePre *.html,*.css,*.scss,*.js,*.py,*.rb,*.h,*.c,*.cpp :%s/\s\+$//e

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

" NERDTree ignore
let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeShowHidden=1
noremap <leader>r :NERDTreeFind<CR>

" Split screen
nnoremap <C-J> <C-W><C-J>
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

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
au FileType py set foldmethod=indent

au BufNewFile,BufRead *.coffee set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab

" ctrlp settings
let g:ctrlp_custom_ignore = 'node_modules'

" The Silver Searcher
if executable('ag')
  " use ag ove grep
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ackprg='ag --vimgrep'

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


let g:closetag_filenames = "*.js,*.jsx,*.html,*.html.erb,*.php,*.hbs"

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let python_highlight_all = 1

let g:prettier#autoformat = 0

let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

let g:tern#command = ['tern']
let g:tern#arguments = ["--persistent"]

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'false'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'
