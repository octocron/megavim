{
  plugins.lspsaga = {
    enable = true;
    codeAction = {
      showServerName = true;
    };

    diagnostic = {
      showCodeAction = true;
      borderFollow = true;
      textHlFollow = true;
    };

    lightbulb = {
      enable = true;
      sign = true;
      virtualText = false;
    };

    outline = {
      winPosition = "right";
      winWidth = 40;
    };

    symbolInWinbar = {
      enable = true;
    };

    ui = {
      border = "rounded";
      devicon = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ca";
      options.desc = "Code Action";
      action = "<cmd>Lspsaga code_action<CR>";
    }
    {
      mode = "n";
      key = "<leader>ld";
      options.desc = "Lsp Goto Definition";
      action = "<cmd>Lspsaga goto_definition<CR>";
    }
    {
      mode = "n";
      key = "<leader>lf";
      options.desc = "Lsp Find";
      action = "<cmd>Lspsaga finder<CR>";
    }
    {
      mode = "n";
      key = "<leader>lh";
      options.desc = "Lsp Hover";
      action = "<cmd>Lspsaga hover_doc<CR>";
    }
    {
      mode = "n";
      key = "<leader>lr";
      options.desc = "Lsp references";
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
    }
    {
      mode = "n";
      key = "<leader>lR";
      options.desc = "Lsp Rename";
      action = "<cmd>Lspsaga rename<CR>";
    }
    {
      mode = "n";
      key = "<leader>ls";
      options.desc = "Lsp Show Definition";
      action = "<cmd>Lspsaga peek_definition<CR>";
    }
    {
      mode = "n";
      key = "<leader>lt";
      options.desc = "Lsp Show Type Definition";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
    }
  ];
}
