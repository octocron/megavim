{
  plugins = {
    noice = {
      enable = true;
      notify.enabled = true;
      lsp = {
        override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
          "cmp.entry.get_documentation" = true;
        };
        progress.enabled = false;
      };
      format = {
        filter = {
          pattern = [ ":%s*%%s*s:%s*" ":%s*%%s*s!%s*" ":%s*%%s*s/%s*" "%s*s:%s*" ":%s*s!%s*" ":%s*s/%s*" ];
          icon = "";
          lang = "regex";
        };
        replace = {
          pattern = [ ":%s*%%s*s:%w*:%s*" ":%s*%%s*s!%w*!%s*" ":%s*%%s*s/%w*/%s*" "%s*s:%w*:%s*" ":%s*s!%w*!%s*" ":%s*s/%w*/%s*" ];
          icon = "󱞪";
          lang = "regex";
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>fm";
      action = "<cmd>lua require('noice').cmd('telescope')<CR>";
      options.desc = "Find Messages";
    }
    {
      mode = "n";
      key = "<leader>c";
      action = "<cmd>lua require('noice').cmd('dismiss')<CR>";
      options.desc = "Clear Messages";
    }
  ];
}
