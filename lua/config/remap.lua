-- map leader to SPACE
vim.g.mapleader = " "
local keymap = vim.keymap.set

keymap("n", "<leader>pv", vim.cmd.Ex)

-- Editing: quit 
keymap("n", "<leader>q", "<Cmd>q<CR>", { desc = "quit" })
keymap("n", "<leader>Q", "<Cmd>q!<CR>", { desc = "force quit" })

-- Editing: write
keymap("n", "<leader>w", "<Cmd>w<CR>", { desc = "save file" })
keymap("n", "<leader>W", "<Cmd>wa<CR>", { desc = "save all files" })

-- Motions
keymap({ "n", "v" }, "S", "^", { desc = "to the first non-blank char of the line" })
keymap({ "n", "v" }, "E", "$", { desc = "to the end of the line" })
