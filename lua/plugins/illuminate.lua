--------------------------------------------------------------------------------
-- Illuminate
--------------------------------------------------------------------------------
return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      delay = 100,
      filetypes_denylist = {
        "alpha",
        "harpoon",
        "TelescopePrompt",
      },
      min_count_to_highlight = 2,
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      under_cursor = true,
    })
  end,
}
