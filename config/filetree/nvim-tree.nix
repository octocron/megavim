{
  plugins.nvim-tree = {
    enable = true;
    git = {
      enable = true; # git integrate with icons and colors
      ignore = false; # files in .gitignore would be ignored by tree
    };
    diagnostics.enable = true;
    updateFocusedFile.enable = true;
    modified.enable = true;
    renderer = {
      indentWidth = 1;
      indentMarkers = {
        enable = true;
        inlineArrows = false;
        icons = {
          corner = "└";
          edge = "│";
          item = "│";
          none = " ";
        };
      };
    };
    view = {
      width = 30;
      side = "left";
      float.enable = false;
      relativenumber = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ea";
      action = "<cmd>lua require('nvim-tree.api').tree.expand_all()<CR>";
      options.desc = "Expand Tree";
    }
    {
      mode = "n";
      key = "<leader>ec";
      action = "<cmd>lua require('nvim-tree.api').tree.collapse_all()<CR>";
      options.desc = "Collapse Tree";
    }
    {
      mode = "n";
      key = "<leader>ee";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
      options.desc = "Toggle Tree";
    }
  ];
}
