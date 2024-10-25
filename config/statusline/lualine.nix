_:

{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        icons_enabled = true;
        globalstatus = true;
        disabled_filetypes = {
          statusline = [
            "dashboard"
            "alpha"
            "starter"
          ];
        };

        theme = "molokai";
        # "codedark", "dracula", "gruvbox", "molokai", "tokyonight"

        componentSeparators = {
          left = "";
          right = "";
        };

        sectionSeparators = {
          left = "";
          right = "";
        };
      };

      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            icon = "";
            separator = {
              left = "";
              right = "";
            };
          }
        ];
        lualine_b = [
          {
            __unkeyed-1 = "branch";
            icon = "";
            separator = {
              left = "";
              right = "";
            };
          }
        ];
        lualine_c = [
          {
            __unkeyed-1 = "diagnostic";
            _raw = ''{
              symbols = {
                error = " ";
                warn = " ";
                info = " ";
                hint = "󰝶 ";
              };
            }'';
          }
          {
            __unkeyed-2 = "filetype";
            separator = {
              left = "";
              right = "";
            };
            _raw = ''{
              icon_only = true;
              padding = {
                left = 1;
                right = 0;
              };
            }'';
          }
          {
            __unkeyed-3 = "filename";
            _raw = ''{
              path = 1;
              symbols = {
                modified = "  ";
                readonly = "";
                unnamed = "";
              };
            }'';
          }
        ];
        lualine_x = [
          "diff"
        ];
        lualine_y = [
          {
            __unkeyed-1 = "progress";
            icon = "";
          }
        ];
        lualine_z = [
          {
            __unkeyed-1 = "location";
          }
        ];
      };
    };
  };
}
