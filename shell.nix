let
  sources = import ./nix/sources.nix;
  nixpkgs = import sources.nixpkgs { config.allowUnfree = true; };
in
nixpkgs.mkShell {
  nativeBuildInputs = [
    nixpkgs.niv
  ];
  NIX_PATH =
    "nixpkgs=${sources.nixpkgs}:nixos-config=/etc/nixos/configuration.nix";
}
