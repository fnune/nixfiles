{ config, lib, pkgs, ... }:

{
  imports = [ ./desktop/gnome.nix (import ./programs/zsh.nix { pkgs = pkgs; config = config; }) ./programs/git.nix (import ./programs/alacritty.nix { config = config; }) ];

  home.packages = with pkgs; [ ripgrep wget unzip zip ];
  home.stateVersion = "22.05";

  home.username = "fausto";
  home.homeDirectory = "/home/fausto";

  programs.home-manager.enable = true;
}
