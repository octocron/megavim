{
  plugins = {
    codeium-nvim = {
      enable = true;
      extraOptions = {
        enable_chat = true;
      };
    };

    keymaps = [
      {
        mode = "i";
        key = "<c-c>";
        action = "<cmd>lua require('codeium-vim.builtin').codeium#Accept<CR>";
        options = {
          expr = true;
          silent = true;
          hidden = true;
        };
      }
      {
        mode = "i";
        key = "<c-x>";
        action = "<cmd>lua require('codeium-vim.builtin').codeium#Clear<CR>";
        options = {
          expr = true;
          silent = true;
          hidden = true;
        };
      }
      {
        mode = "n";
        key = "<leader>ta";
        action = "<cmd>Codeium Auth<CR>";
        options.desc = "Authorize Codeium";
      }
      {
        mode = "n";
        key = "<leader>tc";
        action = "<cmd>Codeium Chat<CR>";
        options = {
          desc = "Authorize Codeium";
          silent = true;
        };
      }
    ];
  };
}
