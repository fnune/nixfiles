{ config, lib, pkgs, ... }:

{
  imports = [ ./desktop/gnome.nix (import ./programs/zsh.nix { pkgs = pkgs; config = config; }) ./programs/git.nix (import ./programs/alacritty.nix { config = config; }) (import ./programs/neovim.nix { config = config; pkgs = pkgs; }) (import ./programs/tmux.nix { pkgs = pkgs; }) (import ./programs/lazygit.nix { pkgs = pkgs; }) ./programs/editorconfig.nix ];

  home.packages = with pkgs; [
    autoconf
    automake
    binutils
    bison
    elfutils
    fakeroot
    file
    file
    findutils
    flex
    gawk
    gcc
    gettext
    gnumake
    groff
    gzip
    libtool
    m4
    patch
    pkgconf
    ripgrep
    texinfo
    unzip
    wget
    which
    zip
  ];
  home.stateVersion = "22.05";

  home.username = "fausto";
  home.homeDirectory = "/home/fausto";

  programs.home-manager.enable = true;
  programs.direnv.enable = true;
  services.lorri.enable = true;
}
