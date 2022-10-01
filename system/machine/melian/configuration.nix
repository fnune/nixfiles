{
  imports = [ /etc/nixos/hardware-configuration.nix ../../shared/configuration.nix ];

  boot.initrd.luks.devices."luks-b922e65d-7b9e-46a4-bbc9-65717385023e".device = "/dev/disk/by-uuid/b922e65d-7b9e-46a4-bbc9-65717385023e";
  boot.initrd.luks.devices."luks-b922e65d-7b9e-46a4-bbc9-65717385023e".keyFile = "/crypto_keyfile.bin";
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  networking.hostName = "melian";
}
