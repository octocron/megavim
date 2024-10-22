# INFO: create boxes around multi line comments
# https://github.com/LudoPinelli/comment-box.nvim

{
  plugins.comment-box = {
    enable = true;
    settings = {
      box_width = 120;
      doc_width = 100;
      line_width = 40;
      comment_style = "auto";
      inner_blank_lines = true;
      outer_blank_lines_below = true;
      borders = {
        bottom = "▣";
        top = "▣";
        left = "▣";
        right = "▢";
        bottom_left = "●";
        bottom_right = "◎";
        top_left = "●";
        top_right = "◎";
      };
      lines = {
        line = "*";
      };
    };
  };
}
