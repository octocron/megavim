{
  plugins.hardtime = {
    enable = true; # if plugin should be include in build
    settings = {
      enabled = false; # if plugin is on by default
      disable_mouse = false;
      disabled_filetypes = [ "qf" "netrw" "NvimTree" "nnn" ]; # filetypes to disable hardtime
      hint = true;
      max_count = 4;
      max_time = 1000;
      notification = true; # show messages for restricted and disabled keys
      restriction_mode = "hint";
      #restricted_keys = {
      #  "h" = [
      #    "n"
      #    "x"
      #  ];
      #  "j" = [
      #    "n"
      #    "x"
      #  ];
      #  "k" = [
      #    "n"
      #    "x"
      #  ];
      #  "l" = [
      #    "n"
      #    "x"
      #  ];
      #  "-" = [
      #    "n"
      #    "x"
      #  ];
      #  "+" = [
      #    "n"
      #    "x"
      #  ];
      #  "gj" = [
      #    "n"
      #    "x"
      #  ];
      #  "gk" = [
      #    "n"
      #    "x"
      #  ];
      #  "<CR>" = [
      #    "n"
      #    "x"
      #  ];
      #  "<C-M>" = [
      #    "n"
      #    "x"
      #  ];
      #  "<C-N>" = [
      #    "n"
      #    "x"
      #  ];
      #  "<C-P>" = [
      #    "n"
      #    "x"
      #  ];
      #};
    };
  };
}
