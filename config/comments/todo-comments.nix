# BUG: huh, what the?
# FIX: better get on it
# NOTE: did you know?
# INFO: learnin ya good
# TEST: test this out
# PERF: run good ya?
# TODO: get ya when I get ya
# HACK: oh lard
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
          "FIX"
          "TEST"
          "TODO"
          "WARN"
        ];
      };
      todoTrouble = {
        key = "<leader>tr";
        options = {
          desc = "Toggle Troubles";
        };
        keywords = [
          "BUG"
          "FIX"
          "TEST"
          "TODO"
          "WARN"
        ];
      };
    };
  };
}
