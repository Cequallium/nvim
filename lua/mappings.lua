require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "s", "<Plug>(leap)")
map("n", "S", "<Plug>(leap-from-window)")
map({ "x", "o" }, "s", "<Plug>(leap-forward)")
map({ "x", "o" }, "S", "<Plug>(leap-backward)")

map("n", "<C-o>", "<cmd> Telescope fd <cr>")

map({ "i", "n", "v" }, "<C-q>", "<cmd> q <cr>")
map({ "i", "n", "v" }, "<C-l>", "<cmd> Telescope buffers <cr>")

