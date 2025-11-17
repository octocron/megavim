{
  pkgs,
  lib,
  ...
}: {
  plugins = {
    smear-cursor = {
      enable = true;
      autoLoad = true;
      settings = {
        cursor_color = "#ffaa00";
        gamma = 1.0;
        hide_target_hack = true;
        stiffness = 0.3;
        trailing_exponent = 5;
        trailing_stiffness = 0.1;
      };
    };
  };
}
