{ pkgs, ... }: {
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
      nixvimInjections = true;
      grammerPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
  };
}
