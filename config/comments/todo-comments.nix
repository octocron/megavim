{
  plugins.todo-comments = {
    enable = true;

    keymaps = {
      todoTelescope = {
        key = "<leader>to";
        keywords = [
          "BUG"
          "DEP"
          "FIXME"
          "HACK"
          "NOTE"
          "TEST"
          "TODO"
        ];
      };
    };

    #settings = {
    #  colors = {
    #      error = { "DiagnosticError", "ErrorMsg", "#880022" },
    #      test = { "Identifier", "#228800" },
    #      info = { "DiagnosticInfo", "#2563eb" },
    #    };
    #  };
    #};
  };
}

