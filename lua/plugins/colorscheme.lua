--------------------------------------------------------------------------------
-- Color Scheme
--------------------------------------------------------------------------------
return {
  {
    "tiagovla/tokyodark.nvim",
    config = function()
      require("tokyodark").setup() -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
}
