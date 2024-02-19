--------------------------------------------------------------------------------
-- TODO Comments
--------------------------------------------------------------------------------
return {
  {
    -- TODO: makes comments pop!
    -- FIX: this needs fixing
    -- HACK: this seems janky
    -- INFO: information
    -- NOTE: also informational
    -- WARN: give warning about something
    -- PERF: performance or optimise related
    -- TEST: testing pass | fail
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
}
