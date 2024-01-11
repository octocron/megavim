return {
  {
    -- TODO Why isn't this working??
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
}
