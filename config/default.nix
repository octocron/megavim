{
  imports = [
    ./keys.nix
    ./sets.nix

    ./colorscheme/colorscheme.nix

    ./completion/cmp.nix
    ./completion/copilot-cmp.nix
    ./completion/lspkind.nix

    ./git/gitsigns.nix
    ./git/lazygit.nix

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix
    ./lsp/none-ls.nix

    ./notes/markdown-preview.nix
    ./notes/pencil.nix
    ./notes/twilight.nix
    ./notes/zen-mod.nix

    ./snippets/luasnip.nix

    ./statusline/lualine.nix
    #/statusline/staline.nix

    ./treesitter/treesitter-context.nix
    ./treesitter/treesitter-textobjects.nix
    ./treesitter/treesitter.nix

    ./ui/alpha.nix
    ./ui/bufferline.nix
    ./ui/noice.nix
    ./ui/nvim-notify.nix
    ./ui/telescope-zoxide.nix
    ./ui/telescope.nix

    ./utils/copilot-lua.nix
    ./utils/hardtime.nix
    ./utils/harpoon.nix
    ./utils/illuminate.nix
    ./utils/nvim-autopairs.nix
    ./utils/oil.nix
    ./utils/telescope-gitmoji.nix
    ./utils/undotree.nix
    ./utils/whichkey.nix
  ];
}
