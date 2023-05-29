vim.g.mapleader = " "

-- Go to netrw in directory where current file resides
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- REMAPING
-- normal mode from insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- CONTEMPLATING
-- normal mode from visual mode
-- vim.keymap.set("v", "jk", "<Esc>")
-- normal mode from command mode

-- navigate between splits
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

