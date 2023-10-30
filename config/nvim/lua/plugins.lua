local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, "lazy")

if (not status) then
  print("lazy is not installed")
  return
end

lazy.setup({
  'tyrannicaltoucan/vim-quantum',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {{ 'kyazdani42/nvim-web-devicons', lazy = true }}
  },
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'onsails/lspkind.nvim',
  'L3MON4D3/LuaSnip',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
    'nvimdev/lspsaga.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons'     -- optional
    }
  },
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'nvim-lua/plenary.nvim',
  'folke/trouble.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-fzf-native.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  'norcalli/nvim-colorizer.lua',
  { 'akinsho/bufferline.nvim', version = "v2.*", dependencies = {'kyazdani42/nvim-web-devicons' }},
  'jose-elias-alvarez/null-ls.nvim', -- Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  'jay-babu/mason-null-ls.nvim',
  'MunifTanjim/prettier.nvim', -- Prettier plugin for Neovim's built-in LSP client
  "williamboman/mason.nvim",
  'williamboman/mason-lspconfig.nvim',
  'kyazdani42/nvim-web-devicons',
  'tpope/vim-rails',
  'tpope/vim-endwise',
  'tpope/vim-repeat',
  'tpope/vim-surround',
  'tpope/vim-bundler',
  'editorconfig/editorconfig-vim',
  'prettier/vim-prettier',
  'kchmck/vim-coffee-script',
})
