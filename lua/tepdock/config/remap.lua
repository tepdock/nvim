-- map leader to SPACE
vim.g.mapleader = " "
local keymap = vim.keymap.set

keymap("n", "<leader>pv", vim.cmd.Ex)

-- Editing: quit 
keymap("n", "<leader>q", "<Cmd>q<CR>", { desc = "quit" })
keymap("n", "<leader>Q", "<Cmd>q!<CR>", { desc = "force quit" })

-- Editing: write
keymap("n", "<leader>w", "<Cmd>w<CR>", { desc = "save file / window split" })

-- Motions
keymap({ "n", "v" }, "S", "^", { desc = "to the first non-blank char of the line" })
keymap({ "n", "v" }, "E", "$", { desc = "to the end of the line" })

-- Highlights
keymap("n", "<leader>/", ":nohl<CR>", { desc = "clear search history" })

-- window management
keymap("n", "<leader>wv", "<C-w>v", { desc = "split window vertically" }) -- split window vertically
keymap("n", "<leader>wh", "<C-w>s", { desc = "slit window horizontally" }) -- split window horizontally
keymap("n", "<leader>we", "<cmd>close<CR>", { desc = "close current split" }) -- close current split window

keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" }) -- open new tab
keymap("n", "<leader>te", "<cmd>tabclose<CR>", { desc = "close current tab" }) -- close current tab
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" }) --  go to next tab
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tab" }) --  go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" }) --  move current buffer to new tab

