require "nvchad.mappings"
-- add yours here

local umap = vim.keymap.del

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('n',        's', '<Plug>(leap)')
map('n',        'S', '<Plug>(leap-from-window)')
map({'x', 'o'}, 's', '<Plug>(leap-forward)')
map({'x', 'o'}, 'S', '<Plug>(leap-backward)')
-- map({ "u", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- umap("n","gs")
