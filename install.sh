#!/usr/bin/env bash

set -euo pipefail

MACHINE_PATTERN="feanor|melian" # Fëanor (desktop), Melian (work laptop)
MACHINE=${1-}

abort () {
  echo >&2 "Aborting: $@"
  exit 1
}

[ "$#" -eq 1 ] || abort "need one argument MACHINE ($MACHINE_PATTERN), got $#."
echo $1 | grep -E -q "^($MACHINE_PATTERN)$" || abort "value of argument MACHINE must be one of $MACHINE_PATTERN."

ETC_NIXOS_BAK=/etc/nixos.bak.$(uuidgen)
echo "Backing up /etc/nixos in $ETC_NIXOS_BAK"
sudo mkdir --parents $ETC_NIXOS_BAK
sudo cp /etc/nixos/configuration.nix /etc/nixos/hardware-configuration.nix $ETC_NIXOS_BAK

sudo rm /etc/nixos/configuration.nix
sudo ln --symbolic $(readlink -f ./system/machine/$MACHINE/configuration.nix) /etc/nixos/configuration.nix

CONFIG_NIXPKGS_BAK=$HOME/.config/nixpkgs.bak.$(uuidgen)
echo "Backing up $HOME/.config/nixpkgs in $CONFIG_NIXPKGS_BAK"
mv $HOME/.config/nixpkgs $CONFIG_NIXPKGS_BAK

mkdir --parents $HOME/.config/nixpkgs
ln -s $(readlink -f ./home/machine/$MACHINE/home.nix) $HOME/.config/nixpkgs/home.nix

nix-shell --run "nix-shell '<home-manager>' -A install"
nix-shell --run "sudo --preserve-env nixos-rebuild switch"
