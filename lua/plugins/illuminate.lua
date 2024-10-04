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
    vim.cmd([[hi def IlluminatedWordText cterm=underline gui=undercurl]])
    vim.cmd([[hi def IlluminatedWordRead  cterm=underline gui=undercurl]])
    vim.cmd([[hi def IlluminatedWordWrite cterm=underline gui=undercurl]])
  end,
}
