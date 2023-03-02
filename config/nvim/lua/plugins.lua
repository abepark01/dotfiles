local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tyrannicaltoucan/vim-quantum'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim'
  use 'folke/trouble.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzf-native.nvim'

  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
  use 'glepnir/lspsaga.nvim'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'jay-babu/mason-null-ls.nvim'
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use { "williamboman/mason.nvim" }
  use 'williamboman/mason-lspconfig.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'tpope/vim-rails'
  use 'tpope/vim-endwise'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-bundler'
  use 'editorconfig/editorconfig-vim'
  use 'prettier/vim-prettier'
  use 'kchmck/vim-coffee-script'
end)
