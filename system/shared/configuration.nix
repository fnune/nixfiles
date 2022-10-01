{ config, pkgs, ... }:

{
  imports = [ (import ./desktop/gnome.nix { pkgs = pkgs; }) ];

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    firefox
    git
    neovim
    wget
  ];

  system.stateVersion = "22.05";

  users.users.fausto.isNormalUser = true;
  users.users.fausto.extraGroups = [ "wheel" ];
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "en_US.utf8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_DK.utf8";
    LC_IDENTIFICATION = "en_DK.utf8";
    LC_MEASUREMENT = "en_DK.utf8";
    LC_MONETARY = "en_DK.utf8";
    LC_NAME = "en_DK.utf8";
    LC_NUMERIC = "en_DK.utf8";
    LC_PAPER = "en_DK.utf8";
    LC_TELEPHONE = "en_DK.utf8";
    LC_TIME = "en_DK.utf8";
  };

  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.openssh.enable = true;
}
