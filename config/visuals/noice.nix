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
      options.desc = "Find Manual";
    }
    {
      mode = "n";
      key = "<leader>ma";
      action = "<cmd>lua require('noice').cmd('all')<CR>";
      options.desc = "All Messages";
    }
    {
      mode = "n";
      key = "<leader>mc";
      action = "<cmd>lua require('noice').cmd('dismiss')<CR>";
      options.desc = "Clear Messages";
    }
    {
      mode = "n";
      key = "<leader>mh";
      action = "<cmd>lua require('noice').cmd('history')<CR>";
      options.desc = "Message History";
    }
    {
      mode = "n";
      key = "<leader>ml";
      action = "<cmd>lua require('noice').cmd('last')<CR>";
      options.desc = "Last Message";
    }
  ];
}
