{ config, pkgs, ... }:

{
  environment.systemPackages = [
    neovim
    firefox
  ];
}
