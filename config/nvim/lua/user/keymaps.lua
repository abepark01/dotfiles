local opts = {
  noremap = true,
  silent = true,
}
_G.mySuperFunc = function ()
  print("hello world")
end

vim.api.nvim_set_keymap("n", "<leader>r", ":lua mySuperFunc()<CR>", { noremap = true })

local keymap = vim.keymap
keymap.set("i", "jj", "<Esc>", opts)

local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

-- Normal --
-- Better window navigation --
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

keymap.set("n", "<leader>e", ":Lex 30<cr>", opts)

keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
keymap.set("n", "<C-Left", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)


keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)
-- Insert --
-- Map jj as escape key --


