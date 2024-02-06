return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    branch = "0.1.x",
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "buffers" })
      vim.keymap.set('n', '<leader>fc', builtin.command_history, { desc = "command history" })
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files" })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "help tags" })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "live grep" })
      vim.keymap.set('n', '<leader>fl', builtin.colorscheme, { desc = "list colorschemes" })
      vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = "man pages" })
      vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "show open" })
      vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = "quickfix list" })
      vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = "vim registers" })
      vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "grep string" })
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}
