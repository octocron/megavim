# INFO: opencode auth login
# this is how best to add models, it will ask for api key
# as of Jan 2026 Opencode plugin only works on macOS
# otherwise you need their full blown app (mac, windows, linux)
{
  plugins = {
    opencode = {
      enable = true;
      settings = {
        auto_reload = true;
        theme = "matrix"; # ayu, catppuccin, dracula, github, gruvbox, matrix, nord, tokyonight
        port = 3000;
        prompts = {
          refactor = {
            description = "Refactor selected code for better readability";
            prompt = "Refactor this code to improve readability and maintainability while preserving functionality";
          };
          document = {
            description = "Add documentation to code";
            prompt = "Add comprehensive documentation comments to this code";
          };
          test = {
            description = "Generate unit tests";
            prompt = "Generate comprehensive unit tests for this function";
          };
          explain = {
            description = "Explain code functionality";
            prompt = "Explain what this code does in simple terms";
          };
        };
      };
    };

    snacks = {
      enable = true;
      settings = {
        input.enable = true;
        picker.enable = true;
        terminal.enable = true;
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>oa";
      action = "<cmd>lua require('opencode').ask('@this: ', {submit = true})<CR>";
      options.desc = "Ask Opencode";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ob";
      action = "<cmd>lua require('opencode').ask('@buffer: ', {submit = true})<CR>";
      options.desc = "Ask Buffer";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>od";
      action = "<cmd>lua require('opencode').prompt('document')<CR>";
      options.desc = "Document code";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>oe";
      action = "<cmd>lua require('opencode').prompt('explain')<CR>";
      options.desc = "Explain code";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>oo";
      action = "<cmd>lua require('opencode').toggle()<CR>";
      options.desc = "Open Opencode";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>or";
      action = "<cmd>lua require('opencode').prompt('refactor')<CR>";
      options.desc = "Refactor code";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>os";
      action = "<cmd>lua require('opencode').select()<CR>";
      options.desc = "Select Action";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "<leader>ot";
      action = "<cmd>lua require('opencode').prompt('test')<CR>";
      options.desc = "Generate tests";
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "ga";
      action = "<cmd>lua require('opencode').prompt('@this')<CR>";
      options.desc = "Add to opencode";
    }
  ];
}
