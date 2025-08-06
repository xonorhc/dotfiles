require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("t", "<ESC>", "<C-\\><C-n>")
-- map({ "n", "i", "t" }, "<A-h>", "<C-\\><C-N><C-w>h")
-- map({ "n", "i", "t" }, "<A-j>", "<C-\\><C-N><C-w>j")
-- map({ "n", "i", "t" }, "<A-k>", "<C-\\><C-N><C-w>k")
-- map({ "n", "i", "t" }, "<A-l>", "<C-\\><C-N><C-w>l")
