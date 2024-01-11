return {
  -- NOTE:Mason is installed
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- NOTE: bridge for mason with lspconfig plugin by installing servers on your system
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
    })
  end
  },
  -- NOTE: the actual lsp plugin
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
    end
  }
}
