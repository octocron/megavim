# BUG: huh, what the?
# FIX: better get on it
# HACK: oh lard
# NOTE: did you know?
# PERF: run good ya?
# TEST: test this out
# TODO: get ya when I get ya
# WARN: better listen up!
{
  plugins.todo-comments = {
    enable = true;

    keymaps = {
      todoTelescope = {
        key = "<leader>to";
        options = {
          desc = "Toggle TODOs";
        };
        keywords = [
          "BUG"
          "DEP"
          "FIX"
          "HACK"
          "NOTE"
          "TEST"
          "TODO"
        ];
      };
      todoTrouble = {
        key = "<leader>tu";
        options = {
          desc = "Toggle Troubles";
        };
        keywords = [
          "BUG"
          "DEP"
          "FIX"
          "HACK"
          "NOTE"
          "TEST"
          "TODO"
        ];
      };
    };
  };
}

