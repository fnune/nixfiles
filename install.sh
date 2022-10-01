#!/bin/bash

set -euo pipefail

MACHINE_PATTERN="feanor|melian" # Fëanor (desktop), Melian (work laptop)
MACHINE=${1-}

abort () {
  echo >&2 "Aborting: $@"
  exit 1
}

[ "$#" -eq 1 ] || abort "need one argument MACHINE ($MACHINE_PATTERN), got $#."
echo $1 | grep -E -q "^($MACHINE_PATTERN)$" || abort "value of argument MACHINE must be one of $MACHINE_PATTERN."

sudo mv /etc/nixos /etc/nixos.bak
sudo mkdir --parents /etc/nixos
sudo ln --symbolic $(readlink -f ./system/machine/$MACHINE/configuration.nix) /etc/nixos/

mkdir --parents $HOME/.config/nixpkgs
ln -s $(readlink -f ./home/machine/$MACHINE/home.nix) $HOME/.config/nixpkgs/home.nix

nix-shell --command "nix-shell '<home-manager>' -A install"
nix-shell --command "sudo --preserve-env nixos-rebuild switch; return"
