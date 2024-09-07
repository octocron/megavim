{
  plugins = {
    lsp = {
      enable = true;

      servers = {
        gopls.enable = true; # go
        kotlin-language-server.enable = true; # kotlin
        tsserver.enable = true; # typescript
        lua-ls.enable = true; # lua
        marksman.enable = true; # markdown
        nil-ls.enable = true; # nix
        jsonls.enable = true; # json
        nushell.enable = true; # nushell
        pylsp.enable = true; # python
        terraformls.enable = true; # terraform
        yamlls.enable = true; # yaml
      };
    };

    lspkind = {
      enable = true;
    };

    lsp-format = {
      enable = true;
    };

    rustaceanvim = {
      enable = true;
      rustAnalyzerPackage = null;

      server = {
        # EOL inlays when?
        # https://github.com/rust-lang/rust-analyzer/issues/4318
        # onAttach = ''
        #   function(client, bufnr)
        #     vim.lsp.inlay_hint.enable(bufnt, true)
        #   end
        # '';
      };

      settings = {
        RustaceanToolOpts.enable_clippy = true;
      };
    };

    nvim-jdtls = {
      enable = true;
      # sneak into `.idea` project folder
      data = ".idea/nvim-jdtls";
    };

    none-ls = {
      enable = true;
      enableLspFormat = true;
      settings = {
        updateInInsert = false;
      };
      sources = {
        code_actions = {
          gitsigns.enable = true;
          statix.enable = true;
        };
        diagnostics = {
          statix.enable = true;
          yamllint.enable = true;
        };
        formatting = {
          nixpkgs_fmt.enable = true;
          black = {
            enable = true;
            settings = ''
              {
                extra_args = { "--fast" },
              }
            '';
          };
          stylua.enable = true;
          yamlfmt.enable = true;
        };
      };
    };
  };
}
