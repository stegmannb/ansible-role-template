{
  description = "A Nix-flake-based Ansible development environment";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    supportedSystems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    forEachSupportedSystem = f:
      nixpkgs.lib.genAttrs supportedSystems (system:
        f {
          pkgs = import nixpkgs {inherit system;};
        });
  in {
    devShells = forEachSupportedSystem ({pkgs}: {
      default = pkgs.mkShell {
        packages = with pkgs; [
          #  python312
          ansible
          ansible-lint
          molecule
          pre-commit
          nodePackages.prettier
          glibcLocales
        ];
        #  ++
        #   (with pkgs.python312Packages; [
        #     pip
        #     venvShellHook
        #     poetry
        #   ]);
        # shellHook = ''
        #   export LC_ALL="C.UTF-8";
        # '';
      };
    });
  };
}
