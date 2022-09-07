vim.cmd('autocmd!')
vim.g.mapleader = ','

vim.api.nvim_set_keymap('i', 'jj', '<Esc>',  { noremap = true })

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.smartcase = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- no wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- finding files - search down into subfolders
vim.opt.wildignore = 'node_modules/'
vim.opt.wildignore:append { '*.o', '*.pyc' }
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.numberwidth = 5
vim.opt.pastetoggle = '<F2>'
vim.opt.showmode = true
vim.opt.wildmenu = true

vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.ffs = 'unix,dos,mac'

vim.opt.lazyredraw = true
vim.opt.magic = true
vim.opt.mat = 2

vim.opt.tm = 500

vim.opt.foldmethod = 'syntax'
vim.opt.foldnestmax = 10
vim.opt.foldenable = false
vim.opt.foldlevel = 1
vim.opt.splitbelow = true
vim.opt.splitright = true
