{ ... }: {
  colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        background = {
          dark = "mocha";
        };
        flavour = "mocha"; # "latte", "mocha", "frappe", "macchiato" or raw lua code
        disableBold = false;
        disableItalic = false;
        disableUnderline = false;
        transparentBackground = true;
        integrations = {
          cmp = true;
          noice = true;
          notify = true;
          gitsigns = true;
          which_key = true;
          illuminate = {
            enabled = true;
          };
          treesitter = true;
          treesitter_context = true;
          telescope.enabled = true;
          indent_blankline.enabled = true;
          native_lsp = {
            enabled = true;
            inlay_hints = {
              background = true;
            };
            underlines = {
              errors = [ "underline" ];
              hints = [ "underline" ];
              information = [ "underline" ];
              warnings = [ "underline" ];
            };
          };
        };
        # NOTE: https://catppuccin.com/palette
        color_overrides.all = {
          text = "#ffaa00";
          subtext0 = "#dd22ff";
          subtext1 = "#ee4400";
          #overlay0 = "#228800";
          #overlay1 = "#228800";
          #surface0 = "#228800";
          #surface1 = "#228800";
          #surface2 = "#228800";
        };
      };
    };
  };
}
