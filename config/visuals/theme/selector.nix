{ ... }: {
  colorschemes = {

    base16 = {
      enable = false;
      setUpBar = false;
      colorscheme = {
        base00 = "#1A1B26";
        base01 = "#3b4261";
        base02 = "#3b4261";
        base03 = "#545c7e";
        base04 = "#565c64";
        base05 = "#a9b1d6";
        base06 = "#bbc5f0";
        base07 = "#c0caf5";
        base08 = "#f7768e";
        base09 = "#ff9e64";
        base0A = "#e0af68";
        base0B = "#9ece6a";
        base0C = "#2ac3de";
        base0D = "#7aa2f7";
        base0E = "#9d7cd8";
        base0F = "#9abdf5";
      };
    };
  };

  catppuccin = {
    enable = false;
    settings = {
      background = {
        light = "macchiato";
        dark = "mocha";
      };
      flavour = "macchiato"; # "latte", "mocha", "frappe", "macchiato" or raw lua code
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
        mini.enabled = true;
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
    };
  };

  dracula = {
    enable = false;
  };

  gruvbox = {
    enable = true;
    settings = {
      true_color = true;
      transparent_mode = true;
    };
  };

  tokyonight = {
    enable = false;
    settings = {
      style = "night";
      transparent = true;
      onHighlights = ''
        function(hl, c)
            local prompt = "#2d3149"
            hl.TelescopeNormal = {
                bg = c.bg_dark,
                fg = c.fg_dark,
            }
            hl.TelescopeBorder = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            hl.TelescopePromptNormal = {
                bg = prompt,
            }
            hl.TelescopePromptBorder = {
                bg = prompt,
                fg = prompt,
            }
            hl.TelescopePromptTitle = {
                bg = prompt,
                fg = prompt,
            }
            hl.TelescopePreviewTitle = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            hl.TelescopeResultsTitle = {
                bg = c.bg_dark,
                fg = c.bg_dark,
            }
            end
      '';
    };
  };
}
