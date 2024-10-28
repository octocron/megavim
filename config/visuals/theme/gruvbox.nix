_: {
  colorschemes = {
    gruvbox = {
      enable = true;
      settings = {
        true_color = true;
        terminal_colors = false;
        transparent_mode = true;
        # INFO: comment to return to default Gruvbox
        palette_overrides = {
          bright_blue = "#00aaff"; # main text, cmd box
          bright_green = "#ff7700"; # folder names
          bright_orange = "#ffee00"; # cursor highlighter, alpha file opts
          bright_purple = "#aa00aa"; # booleans
          bright_aqua = "#22ddcc"; # notify border, note, info
          dark1 = "#383838"; # cursorline
          dark2 = "#333333"; # file counter, command bg
          dark3 = "#007777"; # file divider
          dark4 = "#ff0077"; # gutter
          gray = "#ffeeaa"; # comments, precog
          light1 = "#22cc22"; # filenames, alpha face, telescope
          neutral_blue = "#ffaa00"; # folder icons
          neutral_purple = "#dd22ff"; # file path
        };
      };
    };
  };
}
