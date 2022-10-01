{ config, pkgs, ... }:

{
  environment.systemPackages = [
    firefox
    git
    neovim
  ];
}
