# :ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop
{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<C-t>]]";
      direction = "float";
      start_in_insert = true;
    };

    #    keymaps = [
    #      {
    #        mode = "n";
    #        key = "<leader>tt";
    #        action = ":ToggleTerm<CR>";
    #        options = {
    #          desc = "Toggle Terminal";
    #          silent = true;
    #        };
    #      }
    #    ];
  };
}
