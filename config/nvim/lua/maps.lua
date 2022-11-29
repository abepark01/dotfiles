local keymap = vim.keymap

local set_keymap = vim.api.nvim_set_keymap
set_keymap('i', 'jj', '<Esc>', { noremap = true })
set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
set_keymap('n', '<space>', 'za', { noremap = true })

-- increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
-- If you don't want to use the telescope plug-in but still want to see all the errors/warnings, comment out the telescope line and uncomment this:
-- vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
