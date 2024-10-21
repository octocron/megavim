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
      #{
      #  mode = "n";
      #  key = "<c-{>";
      #  action = "<cmd>AerialPrev<CR>";
      #}
      #{
      #  mode = "n";
      #  key = "<c-}>";
      #  action = "<cmd>AerialNext<CR>";
      #}
      #{
      #  mode = "n";
      #  key = "<leader>aa";
      #  action = "<cmd>AerialToggle right<CR>";
      #  options.desc = "Aerial Toggle";
      #}

      # autosave
      {
        mode = "n";
        key = "<leader>ts";
        action = "<cmd>ASToggle<CR>";
        options.desc = "Toggle Autosave";
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
        key = "<leader>cz";
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


      # hardtime
      {
        mode = "n";
        key = "<leader>th";
        action = ":Hardtime toggle<CR>";
        options = {
          desc = "Toggle Hardtime";
          silent = true;
        };
      }

      # BUG: commands are not working at all for this plugin, not even :illuminateToggle
      # illuminate
      {
        mode = "n";
        key = "<leader>ti";
        action = "<cmd>lua require('illuminate').toggle<CR>";
        options = {
          desc = "Toggle Illuminate";
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

      # none-ls
      {
        mode = [
          "n"
          "v"
        ];
        key = "<leader>gf";
        action = "<cmd>lua vim.lsp.buf.format()<cr>";
        options = {
          silent = true;
          desc = "Format";
        };
      }

      # precognition
      {
        mode = "n";
        key = "<leader>pp";
        action = "<cmd>Precognition peek<CR>";
        options = {
          desc = "Precog Peek";
        };
      }
      {
        mode = "n";
        key = "<leader>tp";
        action = "<cmd>Precognition toggle<CR>";
        options = {
          desc = "Toggle Precognition";
        };
      }

      # todo-comments
      {
        mode = "n";
        key = "<leader>tq";
        action = "<cmd>TodoQuickFix<CR>";
        options = {
          desc = "Toggle Quickfixes";
        };
      }
      {
        mode = "n";
        key = "<leader>tv";
        action = "<cmd>TodoLocList<CR>";
        options = {
          desc = "Toggle Loc List";
        };
      }

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
