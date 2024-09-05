{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        numbers = "none";
        separatorStyle = "slope";
        diagnostics = "nvim_lsp";

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
