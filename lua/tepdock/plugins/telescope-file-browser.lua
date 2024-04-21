return {
   "nvim-telescope/telescope-file-browser.nvim",
   event = "VeryLazy",
   dependencies = { 
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
   },
   config = function()
      local fb_actions = require "telescope._extensions.file_browser.actions"

      require("telescope").setup {
         extensions = {
            file_browser = {
               depth = 1,
               auto_depth = true,
               hidden = { file_browser = true, folder_browser = true },
               hide_parent_dir = false,
               collapse_dirs = false,
               prompt_path = false,
               quiet = false,
               dir_icon = "",
               dir_icon_hl = "Default",
               display_stat = { date = true, size = true, mode = false },
               git_status = true,
               mappings = {
                  ["n"] = {
                     ["c"] = fb_actions.create,
                     ["r"] = fb_actions.rename,
                     ["m"] = fb_actions.move,
                     ["y"] = fb_actions.copy,
                     ["d"] = fb_actions.remove,
                     ["o"] = fb_actions.open,
                     ["g"] = fb_actions.goto_parent_dir,
                     ["e"] = fb_actions.goto_home_dir,
                     ["w"] = fb_actions.goto_cwd,
                     ["t"] = fb_actions.change_cwd,
                     ["f"] = fb_actions.toggle_browser,
                     ["h"] = fb_actions.toggle_hidden,
                     ["s"] = fb_actions.toggle_all,
                  },
               },
            },
         },
      }    
      require("telescope").load_extension "file_browser"

      local keymap = vim.keymap.set
      keymap('n', '<leader>pv', ":Telescope file_browser<CR>", { desc = "find in dir" })

   end,
}
