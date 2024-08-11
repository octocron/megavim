{pkgs, ...}: {
  plugins.lualine = {
    enable = true;

    componentSeparators = {
      left = "";
      right = "";
    };

    sectionSeparators = {
      left = "";
      right = "";
    };

    sections = {
            lualine_a = [
        {
          name = "mode";
          icon = "";
          separator = {
            left = "";
            right = "";
          };
        }
      ];
      lualine_b = [
        {
          name = "branch";
          icon = "";
          separator = {
            left = "";
            right = "";
          };
        }
      ];
      lualine_c = [
        {
          name = "diagnostic";
          extraConfig = {
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          };
        }
        {
          name = "filetype";
          separator = {
            left = "";
            right = "";
          };
          extraConfig = {
            icon_only = true;
            padding = {
              left = 1;
              right = 0;
            };
          };
        }
        {
          name = "filename";
          extraConfig = {
            path = 1;
            symbols = {
              modified = "  ";
              readonly = "";
              unnamed = "";
            };
          };
        }
      ];
      lualine_x = [
        "diff"
      ];
      lualine_y = [
        {
          name = "progress";
          icon = "";
        }
      ];
      lualine_z = [
        {
          name = "location";
        }
      ];
    };

    theme = with pkgs.nix-colors.gruvbox-dark-hard.palette; {
      normal = {
        a = {
          bg = "none";
          fg = "#${base06}";
          gui = "bold";
        };

        b = {
          bg = "none";
          fg = "#${base09}";
        };

        c = {
          bg = "none";
          fg = "#${base04}";
        };
      };
    };
  };
}
