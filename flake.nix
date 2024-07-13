{
  description = "megavim - a nixvim standalone package";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";

    nixvim = {
      url = "gitlab:megacron/megavim/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    pre-commit-hooks = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, flake-parts, nixpkgs, nixvim, pre-commit-hooks, ... } @ inputs:
    let
      config = import ./config; # import the module directly
    in
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      imports = [ inputs.devenv.flakeModule ];

      perSystem = { pkgs, system, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = config;
          };
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNvim {
              inherit nvim;
              name = "megavim";
            };
          };

<<<<<<< HEAD
          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };
||||||| 3e45b01
      snowfall = {
        namespace = "plusultra";
      };
=======
      snowfall = {
        namespace = "megaos";
      };
>>>>>>> 794a8fbcf410ebd2d2ee380aec693e0f643bf9a6

          pre-commit-check = pre-commit-hooks.lib.${system}.run {
            src = ./.;
            hooks = {
              alejandra.enable = true;
            };
          };

          devShells = {
            default = pkgs.mkShell {
              inherit (self.checks.pre-commit-check) shellHook;
              buildInputs = with pkgs; [
                alejandra
              ];
            };
          };
        };
    };
}
