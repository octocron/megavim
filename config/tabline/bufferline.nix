{
  plugins.bufferline = {
    enable = true;
    settings = {
      diagnostics = "nvim_lsp";
      options = {
        numbers = "none";
        separatorStyle = "slope";

        offsets = [
          {
            filetype = "NvimTree";
            text = "Explorer";
            highlight = "PanelHeading";
            padding = 1;
          }
        ];

        keymaps = [
          {
            mode = "n";
            key = "<A-l>";
            action = "<Cmd>BufferLineCycleNext<CR>";
            options.desc = "Next Buffer";
          }
          {
            mode = "n";
            key = "<A-h>";
            action = "<Cmd>BufferLineCyclePrev<CR>";
            options.desc = "Previous Buffer";
          }
          {
            mode = "n";
            key = "<leader>bp";
            action = ":BufferLinePick<cr>";
            options = {
              desc = "Pick Buffer";
              silent = true;
            };
          }
          {
            mode = "n";
            key = "<leader>bse";
            action = ":BufferLineSortByExtension<cr>";
            options = {
              desc = "Sort By Extension";
              silent = true;
            };
          }
        ];
      };
    };
  };
}
