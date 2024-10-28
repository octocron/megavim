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
          bright_blue = "#22cc22"; # main text
          bright_green = "#00aaff"; # folder names
          bright_orange = "#ee4400"; # cursor highlighter, alpha file opts
          bright_purple = "#ee0000"; # booleans
          bright_aqua = "#00aaff"; # notify border, note, info
          dark1 = "#383838"; # cursorline
          dark2 = "#333333"; # file counter, command bg
          dark3 = "#007777"; # file divider
          dark4 = "#ee4400"; # gutter
          gray = "#ffeeaa"; # comments, precog
          light1 = "#22cc22"; # filenames, alpha face
          neutral_blue = "#ffaa00"; # folder icons
          neutral_purple = "#ffaa00"; # file path
        };
      };
    };
  };
}
