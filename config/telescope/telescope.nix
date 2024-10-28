{
  plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^output/"
          "^target/"
        ];
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>lua require('telescope.builtin').buffers({hidden = true})<CR>";
      options.desc = "Find Buffer";
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<cmd>lua require('telescope.builtin').command_history({hidden = true})<CR>";
      options.desc = "File Browser";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>lua require('telescope.builtin').live_grep({hidden = true})<CR>";
      options.desc = "Grep Files";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>lua require('telescope.builtin').help_tags({hidden = true})<CR>";
      options.desc = "Find Help";
    }
    {
      mode = "n";
      key = "<leader>fl";
      action = "<cmd>lua require('telescope.builtin').colorscheme({hidden = true})<CR>";
      options.desc = "List Colorschemes";
    }
    {
      mode = "n";
      key = "<leader>fm";
      action = "<cmd>lua require('telescope.builtin').man_pages({hidden = true})<CR>";
      options.desc = "Find Man Pages";
    }
    {
      mode = "n";
      key = "<leader>fo";
      action = "<cmd>lua require('telescope.builtin').oldfiles({hidden = true})<CR>";
      options.desc = "Find Old Files";
    }
    {
      mode = "n";
      key = "<leader>fq";
      action = "<cmd>lua require('telescope.builtin').quickfix({hidden = true})<CR>";
      options.desc = "Find Quickfixes";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>lua require('telescope.builtin').registers({hidden = true})<CR>";
      options.desc = "Find Registers";
    }
    {
      mode = "n";
      key = "<leader>fs";
      action = "<cmd>lua require('telescope.builtin').grep_string({hidden = true})<CR>";
      options.desc = "Find String";
    }
    {
      mode = "n";
      key = "<leader>ga";
      action = "<cmd>lua require('telescope.builtin').git_stash({hidden = true})<CR>";
      options.desc = "Git Stash";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>lua require('telescope.builtin').git_branches({hidden = true})<CR>";
      options.desc = "Git Branches";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>lua require('telescope.builtin').git_commits({hidden = true})<CR>";
      options.desc = "Git Commits";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>lua require('telescope.builtin').git_status({hidden = true})<CR>";
      options.desc = "Git Status";
    }
    {
      mode = "n";
      key = "<leader>rt";
      action = "<cmd>lua require('telescope.builtin').resume({noremap = true, silent = true})<CR>";
      options.desc = "Resume Telescope";
    }
  ];
}
