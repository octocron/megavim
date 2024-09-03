{
  plugins.aerial = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "{";
      action = "<cmd>AerialPrev<CR>";
    }
    {
      mode = "n";
      key = "}";
      action = "<cmd>AerialNext<CR>";
    }
    {
      mode = "n";
      key = "<leader>aa";
      action = "<cmd>AerialToggle!<CR>";
      options.desc = "Aerial Toggle";
    }
  ];
}
