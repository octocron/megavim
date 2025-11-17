# NOTE: This requires aerial, snacks and wtf.  Aerial is always on by default.
{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    snacks.enable = true;
    wtf.enable = true;
    codecompanion = {
      enable = true;
      settings = {
        strategies = {
          chat = {
            slash_commands = {
              buffer = {
                opts = {
                  provider = "snacks";
                };
              };
              file = {
                opts = {
                  provider = "snacks";
                };
              };
              help = {
                opts = {
                  provider = "snacks";
                };
              };
              symbols = {
                opts = {
                  provider = "snacks";
                };
              };
            };
          };
        };
      };
    };
  };
}
