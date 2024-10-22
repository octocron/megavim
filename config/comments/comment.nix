/*
 * ●▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣◎
 * ▣                                                                        ▢
 * ▣ INFO:USAGE                                                             ▢
 * ▣ [count]gcc - single line comment (normal mode)                         ▢
 * ▣ [count]gbc - multiline comment (normal mode)                           ▢
 * ▣ gco - Insert comment to the next line and enters INSERT mode           ▢
 * ▣ gcO - Insert comment to the previous line and enters INSERT mode       ▢
 * ▣ gcA - Insert comment to end of the current line and enters INSERT mode ▢
 * ▣ gcw - Toggle from the current cursor position to the next word         ▢
 * ▣ gc$ - Toggle from the current cursor position to the end of line       ▢
 * ▣ gc} - Toggle until the next blank line                                 ▢
 * ▣ gc5j - Toggle 5 lines after the current cursor position                ▢
 * ▣ gc8k - Toggle 8 lines before the current cursor position               ▢
 * ▣ gcip - Toggle inside of paragraph                                      ▢
 * ▣ gca} - Toggle around curly brackets                                    ▢
 * ▣ gbaf - Toggle comment around a function (w/ LSP/treesitter support)    ▢
 * ▣ gbac - Toggle comment around a class (w/ LSP/treesitter support)       ▢
 * ▣ gc - Toggles the region (visual mode)                                  ▢
 * ▣ gb - Toggles the region (visual mode)                                  ▢
 * ▣                                                                        ▢
 * ●▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣▣◎
*/


{
  plugins.comment = {
    enable = true;
  };
}
