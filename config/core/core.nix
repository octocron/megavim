{
  config = {
    globals = {
      mapleader = " ";
      loaded_ruby_provider = 0;
      loaded_perl_provider = 0;
      loaded_python_provider = 0;
      #codeium_no_map_tab = true;
    };

    clipboard = {
      register = "unnamed,unnamedplus";
    };

    opts = {
      # 24bit colors
      termguicolors = true;

      # confirm when closing unsaved
      confirm = true;

      # cursor
      scrolloff = 2;

      # decrease update time
      updatetime = 200;
      timeoutlen = 500;

      # decorators
      list = true;
      listchars = "trail:●,nbsp:+,tab:→ ,extends:▸,precedes:◂";

      # folding
      foldenable = false;
      foldlevelstart = 99;
      foldmethod = "indent";
      foldnestmax = 3;
      foldcolumn = "1";

      # gutter
      number = true;
      numberwidth = 6;
      relativenumber = true;
      signcolumn = "yes";
      cursorline = true;

      # history
      history = 500;
      undofile = true;

      # tabs and spaces
      expandtab = true;
      smarttab = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      cindent = true;
      autoindent = true;
      completeopt = "menuone,noselect";

      # search
      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;

      # spelling
      spell = true;

      # split buffer
      hidden = true;
      splitbelow = true;
      splitright = true;

      # undo and backup
      backup = false;
      writebackup = false;
      swapfile = false;

      # wrapper
      wrap = true;
      textwidth = 300;
    };

    autoCmd = [
      {
        event = "FileType";
        pattern = "nix";
        command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2";
      }

      # spellcheck for markdown files
      {
        event = "FileType";
        pattern = "markdown";
        command = "setlocal spell spelllang=en_us";
      }
    ];
  };
}
