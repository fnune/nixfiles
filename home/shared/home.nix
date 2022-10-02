{ config, lib, pkgs, ... }:

{
  imports = [ ./desktop/gnome.nix (import ./programs/zsh.nix { pkgs = pkgs; config = config; }) ./programs/git.nix (import ./programs/alacritty.nix { config = config; }) (import ./programs/neovim.nix { config = config; pkgs = pkgs; }) (import ./programs/tmux.nix { pkgs = pkgs; }) (import ./programs/lazygit.nix { pkgs = pkgs; }) ];

  home.packages = with pkgs; [ ripgrep wget unzip zip ];
  home.stateVersion = "22.05";

  home.username = "fausto";
  home.homeDirectory = "/home/fausto";

  programs.home-manager.enable = true;
}
