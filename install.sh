#!/bin/bash

set -euxo pipefail

sudo mv /etc/nixos /etc/nixos.bak
sudo mkdir --parents /etc/nixos
sudo ln --symbolic $(readlink -f ./configuration.nix) /etc/nixos/
