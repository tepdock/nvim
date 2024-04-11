return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap.set
    local builtin = require('telescope.builtin')

    keymap('n', '<leader>pf', builtin.find_files, { desc = "find in dir" })
    keymap('n', '<C-p>', builtin.git_files, { desc = "find in git files" })
    keymap('n', '<leader>ps', builtin.grep_string, { desc = "find text" })
    keymap("n", "<leader>po", builtin.oldfiles, { desc = "find recent files" })
  end,
}
