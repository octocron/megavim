_: {
  colorschemes = {
    tokyonight = {
      enable = true;
      settings = {
        sidebars = [
          "help"
          "NvimTree"
          "terminal"
        ];
        style = "night";
        styles = {
          floats = "dark";
          sidebars = "dark";
          comments.italic = true;
          keywords.italic = true;
        };
        transparent = true;
        terminal_colors = true;
        #onHighlights = # INFO: lua
        #  ''
        #    function(hl, c)
        #        local prompt = "#161616"
        #        hl.BufferLineIndicatorSelected = {
        #            fg = c.cyan,
        #        }
        #        hl.TelescopeNormal = {
        #            bg = c.bg_dark,
        #            fg = c.fg_dark,
        #        }
        #        hl.TelescopeBorder = {
        #            bg = c.bg_dark,
        #            fg = c.bg_dark,
        #        }
        #        hl.TelescopePromptNormal = {
        #            bg = prompt,
        #        }
        #        hl.TelescopePromptBorder = {
        #            bg = prompt,
        #            fg = prompt,
        #        }
        #        hl.TelescopePromptTitle = {
        #            bg = prompt,
        #            fg = prompt,
        #        }
        #        hl.TelescopePreviewTitle = {
        #            bg = c.bg_dark,
        #            fg = c.bg_dark,
        #        }
        #        hl.TelescopeResultsTitle = {
        #            bg = c.bg_dark,
        #            fg = c.bg_dark,
        #        }
        #        hl.WhichKey = {
        #            bg = prompt,
        #        }
        #        end
        #  '';
      };
    };
  };
}
