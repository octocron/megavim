{ pkgs, lib, ... }:

{
  plugins = {
    codeium-nvim = {
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
          uname = lib.getExe' pkgs.coreutils "uname";
          uuidgen = lib.getExe' pkgs."uuidgen";
          #language_server = { };
        };
      };
    };
  };
}

