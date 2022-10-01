{ pkgs }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.libinput.enable = true;
  services.xserver = {
    layout = "es";
    xkbVariant = "";
    xkbOptions = "caps:escape";
  };
  console.keyMap = "es";

  environment.gnome.excludePackages = (with pkgs.gnome; [
    pkgs.gnome-tour
    atomix
    cheese
    epiphany
    geary
    gedit
    gnome-characters
    gnome-music
    gnome-terminal # Remove later
    hitori
    iagno
    tali
    totem
  ]);

  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  services.dbus.packages = [ pkgs.dconf ];
  programs.dconf.enable = true;

  # See also: home/shared/home.nix to enable these extensions.
  # TODO: create a package for https://github.com/oae/gnome-shell-pano
  environment.systemPackages = with pkgs.gnomeExtensions; [
    appindicator
    removable-drive-menu
    disable-workspace-switch-animation-for-gnome-40
    no-overview
    sound-output-device-chooser
    workspaces-bar
  ];
}

