:snowflake: [nixvim](https://github.com/nix-community/nixvim)

> A Nix version of Neovim.
## :joystick: Commands
```vim
:Glow                           # toggle markdown preview
:LazyGit                        # lazy git
:messages                       # show message history
:Noice                          # show full message history
:Precognition toggle            # vim suggestions toggle
:Telescope                      # fuzzy finder
:Telescope keymaps              # search keymaps
:ToggleTerm direction=float     # toggle terminal
```

## :test_tube: How to Run
You can run this directly from the command line with:
```shell
nix run gitlab:megacron/megavim
```

## :floppy_disk: Direct Install
You can also plug this into a flake to include it into a system configuration.
```nix
# flake.nix
{
  inputs = {
    megavim.url = "gitlab:megacron/megavim";
  };
}
```
```nix
# configuration.nix
{ inputs, system, ... }:
{
  # NixOS
  environment.systemPackages = [ inputs.megavim.packages.${system}.default ];
  # home-manager
  home.packages = [ inputs.megavim.packages.${system}.default ];
}
```

## :flying_saucer: Overlay
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
