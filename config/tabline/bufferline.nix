{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        numbers = "none";
        separatorStyle = "slope";   # INFO: "none" "padded_slant" "padded_slope" "slant" "slope" "thick" "thin"
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
