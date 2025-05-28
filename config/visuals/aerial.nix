{
  plugins.aerial = {
    enable = true;
    settings = {
      attach_mode = "global";
      autojump = true;
      backends = [
        "treesitter"
        "lsp"
        "markdown"
        "man"
      ];
      disable_max_lines = 5000;
      highlight_on_hover = true;
      open_automatic = true;
    };
  };
}
