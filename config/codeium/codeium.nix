{
  plugins.codeium = {
    enable = true;
    event = [
      "BufEnter"
    ];

    extraOptions = {
        enable_chat = true;
      };

    keymaps = [
      {
        mode = "i";
        key = "<c-c>";
        action = "<cmd>lua require('codeium.builtin').codeium#Accept({hidden = true})<CR>";
        options = {
          expr = true;
          silent = true;
        };
      }
      {
        mode = "i";
        key = "<c-x>";
        action = "<cmd>lua require('codeium.builtin').codeium#Clear({hidden = true})<CR>";
        options = {
          expr = true;
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<leader>ca";
        action = "<cmd>Codeium Auth<CR>";
        options.desc = "Authorize Codeium";
      }
      {
        mode = "n";
        key = "<leader>cc";
        action = "<cmd>Codeium Chat<CR>";
        options= {
          desc = "Authorize Codeium";
          silent = true;
        };
      }
    ];
  };
}
