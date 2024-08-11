{
  description = "megavim - a nixvim standalone package";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    #stylix.url = "github:danth/stylix";
    devenv.url = "github:cachix/devenv";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { flake-parts, nixpkgs, nixvim, pre-commit-hooks, ... } @ inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
      imports = [ inputs.devenv.flakeModule ];

      perSystem = { self, lib, pkgs, system, ... }:
        let
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = ./config;
          };
        in
        {
          _module.args.pkgs = import nixpkgs {
            inherit system;
            overlays = builtins.attrValues {
              default = import ./overlay {
                inherit nixvim lib system;
              };
            };
          };

          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = pkgs.nixvimLib.check.mkTestDerivationFromNvim {
              inherit nvim;
              name = "megavim";
            };

            pre-commit-check = pre-commit-hooks.lib.${system}.run {
              src = ./.;
              hooks = {
                statix.enable = true;
                alejandra.enable = true;
              };
            };
          };

          formatter = pkgs.alejandra;

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };

          devShells = {
            default = with pkgs;
              mkShell {
              inherit (self'.checks.pre-commit-check) shellHook;
            };
          };
        };
    };
}
