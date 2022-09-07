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


-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')
