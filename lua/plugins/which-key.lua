return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    window = {
      position = "bottom",
      border = "double",
      winblend = 100,
    },
  },
}
