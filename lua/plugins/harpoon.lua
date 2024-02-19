--------------------------------------------------------------------------------
-- Harpoon 2
--------------------------------------------------------------------------------
return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    config = function()
      require("telescope").load_extension("harpoon_files")
    end,
  },
}
