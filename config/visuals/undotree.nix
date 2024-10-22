# NOTE: Opens left panel to deal with files that have been changed

{
  plugins.undotree = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>tu";
      action = "<cmd>UndotreeToggle<CR>";
      options.desc = "Toggle Undotree";
    }
  ];
}
