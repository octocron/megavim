# INFO: opencode auth login
# this is how best to add models, it will ask for api key
{
  pkgs,
  lib,
  ...
}:
{
  plugins = {
    opencode = {
      enable = true;
      settings = {
        auto_reload = false;
        theme = "matrix"; # ayu, catppuccin, dracula, github, gruvbox, matrix, nord, tokyonight
        port = 8080;
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

    ollama = {
      enable = true;
      settings = {
        action = "display";
        model = "deepseek-coder-v2:16b";
        url = "http://127.0.0.1:11434";
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
      key = "<leader>os";
      action = "<cmd>lua require('opencode').select()<CR>";
      options.desc = "Select Action";
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
    {
      mode = [
        "n"
        "t"
      ];
      key = "<leader>oo";
      action = "<cmd>lua require('opencode').toggle()<CR>";
      options.desc = "Open Opencode";
    }
  ];
}
