{
  config = {
    keymaps = [
      # core
      {
        mode = "n";
        key = "<leader>q";
        action = "<cmd>qa<CR>";
        options.desc = "Quit NeoVim";
      }
      {
        mode = "n";
        key = "<leader>bs";
        action = "<cmd>w<CR>";
        options.desc = "Save Current Buffer";
      }
      {
        mode = "n";
        key = "<C-s>";
        action = "<cmd>w<CR>";
        options.desc = "Save Current Buffer";
      }
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
      }

      # aerial
      {
        mode = "n";
        key = "<c-{>";
        action = "<cmd>AerialPrev<CR>";
      }
      {
        mode = "n";
        key = "<c-}>";
        action = "<cmd>AerialNext<CR>";
      }
      # FIXME: not working
      {
        mode = "n";
        key = "<leader>aa";
        action = "<cmd>AerialToggle right<CR>";
        options.desc = "Aerial Toggle";
      }


      # bufferline
      {
        mode = "n";
        key = "<A-l>";
        action = "<Cmd>BufferLineCycleNext<CR>";
        options.desc = "Next Buffer";
      }
      {
        mode = "n";
        key = "<A-h>";
        action = "<Cmd>BufferLineCyclePrev<CR>";
        options.desc = "Previous Buffer";
      }
      {
        mode = "n";
        key = "<leader>bp";
        action = ":BufferLinePick<cr>";
        options = {
          desc = "Pick Buffer";
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>bse";
        action = ":BufferLineSortByExtension<cr>";
        options = {
          desc = "Sort By Extension";
          silent = true;
        };
      }

      # codeium
      {
        mode = "i";
        key = "<c-c>";
        action = "<cmd>lua require('codeium-vim.builtin').codeium#Accept<CR>";
        options = {
          expr = true;
          silent = true;
        };
      }
      {
        mode = "i";
        key = "<c-x>";
        action = "<cmd>lua require('codeium-vim.builtin').codeium#Clear<CR>";
        options = {
          expr = true;
          silent = true;
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
          desc = "Chat Codeium";
          silent = true;
        };
      }

      # glow
      {
        mode = "n";
        key = "<leader>tg";
        action = ":Glow<CR>";
        options = {
          desc = "Toggle Glow";
          silent = true;
        };
      }

      # lazygit
      {
        mode = "n";
        key = "<leader>tl";
        action = "<cmd>LazyGit<CR>";
        options = {
          desc = "Toggle LazyGit";
        };
      }

      # precognition
      {
        mode = "n";
        key = "<leader>tp";
        action = "<cmd>Precognition toggle<CR>";
        options = {
          desc = "Toggle Vim Indicators";
        };
      }

      # todo-comments

      # toggleterm
      {
        mode = "n";
        key = "<leader>tt";
        action = ":ToggleTerm<CR>";
        options = {
          desc = "Toggle Terminal";
          silent = true;
        };
      }
    ];
  };
}
