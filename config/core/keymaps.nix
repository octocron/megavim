{
  config = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>q";
        action = "<cmd>qa<CR>";
        options.desc = "Quit NeoVim";
      }
      {
        mode = "n";
        key = "<leader>w";
        action = "<cmd>w<CR>";
        options.desc = "Save Current Buffer";
      }

      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
      }
    ];
  };
}
