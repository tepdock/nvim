return {
  "nvim-tree/nvim-tree.lua",
  enabled = false,
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
       view = {
          width = 35,
          relativenumber = true,
       },
       -- change folder arrow icons
       renderer = {
          indent_markers = {
             enable = true,
          },
          icons = {
             glyphs = {
                git = {
                   unstaged = "U",
                   staged = "S",
                   unmerged = "",
                   renamed = "➜",
                   untracked = "",
                   deleted = "",
                   ignored = "◌",
                },
             },
          },
       },

       diagnostics = {
          enable = false,
          show_on_dirs = false,
          show_on_open_dirs = true,
          debounce_delay = 50,
          severity = {
             min = vim.diagnostic.severity.HINT,
             max = vim.diagnostic.severity.ERROR,
          },
          icons = {
             hint = "",
             info = "",
             warning = "",
             error = "",
          },
       },

       -- disable window_picker for
       -- explorer to work well with
       -- window splits
       actions = {
          open_file = {
             window_picker = {
                enable = false,
             },
          },
       },
    })

    -- set keymaps
    local keymap = vim.keymap.set 

    keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" }) -- toggle file explorer
    keymap("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "collapse file explorer" }) -- collapse file explorer
    keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" }) -- refresh file explorer
    keymap("n", "<leader>ea", "<cmd>NvimTreeRefresh<CR>", { desc = "add file in explorer" }) -- refresh file explorer
 end
}
