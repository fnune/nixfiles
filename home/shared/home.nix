{ config, lib, pkgs, ... }:

{
  imports = [ ./programs/zsh.nix ./programs/git.nix ];

  home.packages = with pkgs; [ ripgrep wget unzip zip ];
  home.stateVersion = "22.05";

  home.username = "fausto";
  home.homeDirectory = "/home/fausto";

  programs.home-manager.enable = true;
}
