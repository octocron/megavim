--------------------------------------------------------------------------------
-- Illuminate
--------------------------------------------------------------------------------
return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").setup({
      delay = 200,
      filetypes_denylist = {
        "alpha",
        "harpoon",
        "toggleterm",
        "NvimTree",
        "TelescopePrompt",
        "TelescopeResults",
      },
      min_count_to_highlight = 1,
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      under_cursor = true,
    })
  end,
}
