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
        ];
        filetypes = [
          ""
          "checkhealth"
          "help"
          "lspinfo"
          "man"
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
        char = "▎";
      };
      scope = {
        enabled = true;
        show_exact_scope = true;
        char = "│";
      };
    };
  };
}
