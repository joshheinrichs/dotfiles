{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }:
  let
    forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
  in {
    packages = forAllSystems (system:
      { default = import ./profile.nix { pkgs = import nixpkgs { inherit system; config.allowUnfree = true; }; }; }
    );
  };
}
