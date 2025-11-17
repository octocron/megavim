{
  pkgs,
  lib,
  ...
}: {
  plugins = {
    opencode = {
      enable = true;
      settings = {
        auto_reload = false;
        port = 8080;
        prompts = {
          example = {
            description = "An example prompt configuration";
            prompt = "Write a function that returns the factorial of a number";
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
      };
    };
  };
}
