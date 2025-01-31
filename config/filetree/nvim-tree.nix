{
  plugins.nvim-tree = {
    enable = true;
    actions = {
      windowPicker = {
        enable = true;
      };
    };
    diagnostics.enable = true;
    filters = {
      custom = [ ".DS_Store" ]; # <leader>ef
    };
    git = {
      enable = true; # git integrate with icons and colors
      ignore = false; # files in .gitignore would be ignored by tree
    };
    hijackCursor = true;
    modified.enable = true; # show unsaved files
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
    updateFocusedFile.enable = true;
    view = {
      width = 38;
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
    {
      mode = "n";
      key = "<leader>ef";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle_custom()<CR>";
      options.desc = "Toggle Filter";
    }
    {
      mode = "n";
      key = "<c-v>";
      action = "<cmd>lua require('nvim-tree.api').node.open.vertical()<CR>";
      options.desc = "Open Vertical";
    }
  ];
}
