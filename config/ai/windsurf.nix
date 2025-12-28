# NOTE: Formerly Codeium: use browser for Codeium Auth for best results.
{
  pkgs,
  lib,
  ...
}:
{
  plugins = {
    windsurf-nvim = {
      enable = true;
      settings = {
        enable_chat = true;
        enterprise_mode = false;
        api = {
          host = "server.codeium.com";
          port = 443;
        };
        tools = {
          curl = lib.getExe pkgs.curl;
          gzip = lib.getExe pkgs.gzip;
          #language_server = { };
        };
        workspace_root = {
          use_lsp = true;
        };
      };
    };
  };
}
