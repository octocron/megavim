{
  plugins.vim-bbye = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>bb";
      action = "<cmd>Bdelete<CR>";
      options.desc = "Close Buffer";
    }
  ];
}
