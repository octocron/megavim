{
  pkgs,
  lib,
  ...
}: {
  plugins = {
    ollama = {
      enable = true;
      settings = {
        action = "display";
        model = "mistral";
        prompts = {
          my-prompt = {
            action = "display";
            extract = ''
              ```$ftype
              (.-)```'';
            format = "json";
            input_label = "> ";
            model = "foo";
            options = {
              mirostat_eta = 0.1;
              num_thread = 8;
              repeat_last_n = -1;
              stop = "arrêt";
            };
            prompt = "Hello $input $sel. J'aime le fromage.";
            system = "system";
          };
        };
        serve = {
          args = [
            "serve"
          ];
          command = "ollama";
          on_start = false;
          stop_args = [
            "-SIGTERM"
            "ollama"
          ];
          stop_command = "pkill";
        };
        url = "http://127.0.0.1:11434";
      };
    };
  };
}
