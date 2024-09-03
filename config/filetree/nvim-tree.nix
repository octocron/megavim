{
  plugins.nvim-tree = {
    enable = true;
    git = {
      enable = true;
      ignore = false;
    };
    renderer.indentWidth = 1;
    diagnostics.enable = true;
    view.float.enable = false;    # FIXME: trying false to see if it stays left.
    updateFocusedFile.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ee";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
      options.desc = "Toggle Tree";
    }
  ];
}
