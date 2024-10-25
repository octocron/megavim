{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      exclude = {
        buftypes = [
          "nofile"
          "prompt"
          "quickfix"
          "terminal"
          "lsp"
          "lspinfo"
          "nvim-tree"
        ];
        filetypes = [
          ""
          "checkhealth"
          "help"
          "lspinfo"
          "man"
          "NvimTree"
          "TelescopePrompt"
          "TelescopeResults"
          "ToggleTerm"
          "Trouble"
          "Undotree"
          "toml"
          "yaml"
        ];
      };
      indent = {
        smart_indent_cap = true;
        char = "│";
      };
      scope = {
        enabled = true;
        show_exact_scope = true;
        char = "│";
      };
    };
  };

  extraConfigLua = ''
        local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
    }

    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    end)
    require("ibl").setup { indent = { highlight = highlight } }
  '';
}
