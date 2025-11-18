{
  plugins = {
    illuminate = {
      enable = true;
      settings = {
        underCursor = true;
        minCountToHighlight = 2;
        filetypesDenylist = [
          "alpha"
          "harpoon"
          "TelescopePrompt"
        ];
        providers = [
          "lsp"
          "treesitter"
          "regex"
        ];
      };
    };
  };

  highlight = {
    IlluminatdWordText.underline = true;
    IlluminatdWordRead.underline = true;
    IlluminatdWordWrite.underline = true;
  };
}
