--[[return {
  "rose-pine/neovim",
  priority = 1000,
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      -- disable_background = true,

        styles = {
          bold = false,
          italic = false,
          transparency = false,
        },
        highlight_groups = {
          TelescopeBorder = { fg = "overlay", bg = "overlay" },
          TelescopeNormal = { fg = "subtle", bg = "overlay" },
          TelescopeSelection = { fg = "text", bg = "highlight_med" },
          TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
          TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

          TelescopeTitle = { fg = "base", bg = "love" },
          TelescopePromptTitle = { fg = "base", bg = "pine" },
          TelescopePreviewTitle = { fg = "base", bg = "iris" },

          TelescopePromptNormal = { fg = "text", bg = "surface" },
          TelescopePromptBorder = { fg = "surface", bg = "surface" },
        },
      })

      vim.cmd.colorscheme("rose-pine")
    end
  } ]]--


return {
   "ellisonleao/gruvbox.nvim",
   priority = 1000,
   name = "gruvbox",
   config = function ()
      require("gruvbox").setup({
         terminal_colors = true, -- add neovim terminal colors
         undercurl = true,
         underline = true,
         bold = true,
         italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
         },
         strikethrough = true,
         invert_selection = false,
         invert_signs = false,
         invert_tabline = false,
         invert_intend_guides = false,
         inverse = true, -- invert background for search, diffs, statuslines and errors
         contrast = "", -- can be "hard", "soft" or empty string
         palette_overrides = {},
         overrides = {},
         dim_inactive = false,
         transparent_mode = false,
      })

      vim.cmd.colorscheme("gruvbox")
   end
}
