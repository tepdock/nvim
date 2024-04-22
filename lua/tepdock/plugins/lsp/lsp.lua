return {
   "williamboman/mason.nvim",
   dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
   },
   config = function()
      -- import mason
      local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

      -- enable mason and configure icons
      mason.setup({
         ui = {
            icons = {
               package_installed = "✓",
               package_pending = "➜",
               package_uninstalled = "✗",
            },
         },
      })

      mason_lspconfig.setup({
         -- list of servers for mason to install
         ensure_installed = {
            'csharp_ls',
            'omnisharp',
            'cssls',
            'dockerls',
            'docker_compose_language_service',
            'gopls',
            'html',
            'jsonls',
            'tsserver',
            'powershell_es',
         },
      })
   end,
}
