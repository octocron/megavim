:snowflake: [nixvim](https://github.com/nix-community/nixvim)

> A Nix version of Neovim.
## :joystick: How to Run
You can run this directly from the command line with:
```shell
# Full featured version
nix run gitlab:megacron/nixvim

# Lighter version without lsp.
nix run gitlab:megacron/nixvim#lite
```

## :floppy_disk: Install
You can also plug this into a flake to include it into a system configuration.
```nix
{
  inputs = {
    megavim.url = "gitlab:megacron/nixvim";
  };
}
```

This input can then be used as an overlay to replace the default neovim.
```nix
{ megavim, ... }:
{
    overlays = (final: prev: {
      neovim = megavim.packages.${prev.system}.default;
    });
}
```
You can find more information on building your own flake
[here](https://gist.github.com/siph/288b7c6b5f68a1902d28aebc95fde4c5).
