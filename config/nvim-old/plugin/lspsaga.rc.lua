local status, saga = pcall(require, 'lspsaga')

if (not status) then return end

saga.setup {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }

local set = vim.keymap.set

set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
set('n', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
