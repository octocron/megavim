{
  plugins.hardtime = {
    enable = true; # if plugin should be include in build
    settings = {
      enabled = false; # if plugin is on by default
      disableMouse = false;
      disabledFiletypes = [ "qf" "netrw" "NvimTree" "nnn" ]; # filetypes to disable hardtime
      hint = true;
      maxCount = 4;
      maxTime = 1000;
      notification = true; # show messages for restricted and disabled keys
      restrictionMode = "hint";
      restrictedKeys = {
        "h" = [
          "n"
          "x"
        ];
        "j" = [
          "n"
          "x"
        ];
        "k" = [
          "n"
          "x"
        ];
        "l" = [
          "n"
          "x"
        ];
        "-" = [
          "n"
          "x"
        ];
        "+" = [
          "n"
          "x"
        ];
        "gj" = [
          "n"
          "x"
        ];
        "gk" = [
          "n"
          "x"
        ];
        "<CR>" = [
          "n"
          "x"
        ];
        "<C-M>" = [
          "n"
          "x"
        ];
        "<C-N>" = [
          "n"
          "x"
        ];
        "<C-P>" = [
          "n"
          "x"
        ];
      };
    };
  };
}
