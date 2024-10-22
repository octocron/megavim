{
  config = {
    keymaps = [
      # INFO: core
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

      # INFO: Aerial
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

      # INFO: Autosave
      {
        mode = "n";
        key = "<leader>ts";
        action = "<cmd>ASToggle<CR>";
        options.desc = "Toggle Autosave";
      }

      # INFO: Bufferline
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

      # INFO: Codeium
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

      # INFO: Comment Box
      {
        mode = [ "n" "v" ];
        key = "<leader>cba";
        action = "<cmd>CBlabox10<CR>";
        options = {
          desc = "Comment Box ASCII";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cbb";
        action = "<cmd>CBlabox<CR>";
        options = {
          desc = "Comment Box";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cbd";
        action = "<cmd>CBd<CR>";
        options = {
          desc = "Comment Box Delete";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cbh";
        action = "<cmd>CBlabox5<CR>";
        options = {
          desc = "Comment Box Dashed Heavy";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cbl";
        action = "<cmd>CBllline<CR>";
        options = {
          desc = "Comment Line";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cbr";
        action = "<cmd>CBllline7<CR>";
        options = {
          desc = "Comment Line Rounded";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cbt";
        action = "<cmd>CBccbox<CR>";
        options = {
          desc = "Comment Box Title";
        };
      }
      {
        mode = "n";
        key = "<leader>cbs";
        action = "<cmd>CBcatalog<CR>";
        options = {
          desc = "Comment Styles";
        };
      }
      {
        mode = [ "n" "v" ];
        key = "<leader>cby";
        action = "<cmd>CBy<CR>";
        options = {
          desc = "Comment Box Yank Text";
        };
      }

      # INFO: Glow
      {
        mode = "n";
        key = "<leader>tg";
        action = ":Glow<CR>";
        options = {
          desc = "Toggle Glow";
          silent = true;
        };
      }


      # INFO: Hardtime
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
      # INFO: Illuminate
      {
        mode = "n";
        key = "<leader>ti";
        action = "<cmd>lua require('illuminate').toggle<CR>";
        options = {
          desc = "Toggle Illuminate";
          silent = true;
        };
      }

      # INFO: Lazygit
      {
        mode = "n";
        key = "<leader>tl";
        action = "<cmd>LazyGit<CR>";
        options = {
          desc = "Toggle LazyGit";
        };
      }

      # INFO: None-ls
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

      # INFO: Precognition
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

      # INFO: todo-comments
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

      # INFO: toggleterm
      {
        mode = "n";
        key = "<leader>tt";
        action = ":ToggleTerm<CR>";
        options = {
          desc = "Toggle Terminal";
          silent = true;
        };
      }

      # INFO: Transparent
      {
        mode = "n";
        key = "<leader>pt";
        action = ":TransparentToggle<CR>";
        options = {
          desc = "Toggle Transparent";
          silent = true;
        };
      }
    ];
  };
}
