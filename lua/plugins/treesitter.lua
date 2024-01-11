return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "bash", "css", "dockerfile", "c", "go", "javascript", "json", "lua", "markdown", "markdown_inline", "nix", "rust", "terraform", "toml", "query", "yaml", "vim", "vimdoc" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
