# FIX: loads on left overlapping nvimtree

{
  plugins.undotree = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>UndotreeToggle<CR>";
      options.desc = "Toggle Undotree";
    }
  ];
}
