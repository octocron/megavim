{
  plugins.alpha = let
      megacron = [
        "              ▄▄▄▄▄▄▄▄▄                  "
        "           ▄█████████████▄               "
        "   █████  █████████████████  █████       "
        "   ▐████▌ ▀███▄       ▄███▀ ▐████▌       "
        "    █████▄  ▀███▄   ▄███▀  ▄█████        "
        "    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌        "
        "     ███▄▀███▄  ▀███▀  ▄███▀▄███         "
        "     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌         "
        "      ███▄▀█▄██ ██▄██ ██▄█▀▄███          "
        "       ▀███▄▀██ █████ ██▀▄███▀           "
        "      █▄ ▀█████ █████ █████▀ ▄█          "
        "      ███        ███        ███          "
        "      ███▄    ▄█ ███ █▄    ▄███          "
        "      █████ ▄███ ███ ███▄ █████          "
        "      █████ ████ ███ ████ █████          "
        "      █████ ████▄▄▄▄▄████ █████          "
        "       ▀███ █████████████ ███▀           "
        "         ▀█ ███ ▄▄▄▄▄ ███ █▀             "
        "            ▀█▌▐█████▌▐█▀                "
        "               ███████                   "
        ""
        "           megavim by megacron           "

    ];
  in {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 4;
      }
      {
        opts = {
          hl = "AlphaHeader";
          position = "center";
        };
        type = "text";
        val = megacron;
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = let
          mkButton = shortcut: cmd: val: hl: {
            type = "button";
            inherit val;
            opts = {
              inherit hl shortcut;
              keymap = [
                "n"
                shortcut
                cmd
                {}
              ];
              position = "center";
              cursor = 0;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          };
        in [
          (
            mkButton
            "e"
            "<CMD>lua require('nvim-tree.builtin').NvimTreeToggle<CR>"
            "🗃 File Explorer"
            "Operator"
          )
          (
            mkButton
            "f"
            "<CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>"
            "📂 Find File"
            "Operator"
          )
          (
            mkButton
            "g"
            "<CMD>lua require('telescope.builtin').live_grep({hidden = true})<CR>"
            "📃 Grep Files"
            "Operator"
          )
          (
            mkButton
            "r"
            "<CMD>lua require('telescope.builtin').oldfiles({hidden = true})<CR>"
            "🗂 Recent Files"
            "Operator"
          )
          (
            mkButton
            "q"
            "<CMD>qa<CR>"
            "💣 Quit Neovim"
            "String"
          )
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        opts = {
          hl = "GruvboxBlue";
          position = "center";
        };
        type = "text";
        val = "https://github.com/megacron/megavim";
      }
    ];
  };
}
