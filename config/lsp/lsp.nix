{
  plugins = {
    lsp = {
      enable = true;

      servers = {
        gopls = {
          enable = true;
          settings = {
            gofumpt = true; # Go
          };
        };
        jsonls = {
          enable = true;
          settings = {
            json = {
              format = {
                enable = true; # JSON
              };
            };
          };
        };
        kotlin_language_server.enable = true; # Kotlin
        lua_ls = {
          enable = true;
          settings = {
            Lua = {
              format = {
                enable = true; # Lua
              };
            };
          };
        };
        marksman.enable = true; # markdown
        nil_ls.enable = true; # nix
        nushell.enable = true; # nushell
        pylsp = {
          enable = true;
          settings = {
            pylsp = {
              plugins = {
                autopep8.enabled = true; # Python
              };
            };
          };
        };
        taplo = {
          enable = true;
          settings = {
            formatter = {
              enabled = true; # TOML
            };
          };
        };
        terraformls = {
          enable = true;
          settings = {
            formatting = {
              enable = true; # Terraform
            };
          };
        };
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
      settings = {
        RustaceanToolOpts.enable_clippy = true;
      };
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
        };
        formatting = {
          black = {
            enable = true;
            settings = ''
              {
                extra_args = { "--fast" },
              }
            '';
          };
          alejandra.enable = true;
          goimports.enable = true;
          prettier = {
            enable = true;
            settings = {
              disabled_filetypes = [
                "yaml"
                "yml"
              ];
            };
          };
          stylua.enable = true;
          yamlfmt.enable = true;
        };
      };
    };
  };
}
