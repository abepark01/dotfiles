-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

local set_keymap = vim.api.nvim_set_keymap
set_keymap("i", "jj", "<Esc>", { noremap = true })
set_keymap("n", "<C-J>", "<C-W><C-J>", { noremap = true })
set_keymap("n", "<C-K>", "<C-W><C-K>", { noremap = true })
set_keymap("n", "<C-L>", "<C-W><C-L>", { noremap = true })
set_keymap("n", "<C-H>", "<C-W><C-H>", { noremap = true })

set_keymap("n", "<leader>d", "d", { noremap = true })
set_keymap("n", "<leader>D", "D", { noremap = true })
set_keymap("v", "<leader>d", "d", { noremap = true })
set_keymap("n", "d", [["_d]], { noremap = true })
set_keymap("n", "D", [["_D]], { noremap = true })
set_keymap("v", "d", [["_d]], { noremap = true })
set_keymap("n", "<leader>c", "c", { noremap = true })
set_keymap("n", "<leader>C", "C", { noremap = true })
set_keymap("v", "<leader>c", "c", { noremap = true })
set_keymap("n", "c", [["_c]], { noremap = true })
set_keymap("n", "C", [["_C]], { noremap = true })
set_keymap("v", "c", [["_c]], { noremap = true })

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

vim.api.nvim_set_keymap(
  "n",
  "<leader>do",
  "<cmd>lua vim.diagnostic.open_float()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>d[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
