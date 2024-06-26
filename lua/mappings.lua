require "nvchad.mappings"
-- add yours here

local unmap = vim.keymap.del

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "s", "<Plug>(leap)")
map("n", "S", "<Plug>(leap-from-window)")
map({ "x", "o" }, "s", "<Plug>(leap-forward)")
map({ "x", "o" }, "S", "<Plug>(leap-backward)")
map({ "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-o>", "<cmd> Telescope fd <cr>")
map({ "i", "n", "v" }, "<C-q>", "<cmd> q <cr>")
