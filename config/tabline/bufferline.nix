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
      };
    };
  };
}
