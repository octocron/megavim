{
  plugins.lazygit = {
    enable = true;
  };

  extraConfigLua = ''
    require("telescope").load_extension("lazygit")
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>tg";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit (root dir)";
      };
    }
  ];
}
