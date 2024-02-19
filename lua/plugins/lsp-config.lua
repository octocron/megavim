--------------------------------------------------------------------------------
-- Mason
--------------------------------------------------------------------------------
return {
  -- INFO:Installs Mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  -- INFO: bridge for mason with lspconfig plugin by installing servers on your system
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "rust_analyzer" }
    })
  end
  },
  -- INFO: the actual lsp plugin
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using
              -- (most likely LuaJIT in the case of Neovim)
              version = 'LuaJIT',
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {
                'vim',
                'require'
              },
            },
            workspace = {
              -- Make the server aware of Neovim runtime files
              library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false,
            },
          },
        },
      })
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "lsp buffer hover" })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "lsp definition" })
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = "code action" })
    end
  }
}
