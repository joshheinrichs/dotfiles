#!/usr/bin/env bash

mkdir -p ~/.local/state/nix/profiles
nix-env -f packages.nix -iA packages --profile ~/.local/state/nix/profiles/jellyfin

cp jellyfin.service ~/.config/systemd/user/jellyfin.service
mkdir -p ~/.config/systemd/user/jellyfin.service.d
echo '[Service]' > ~/.config/systemd/user/jellyfin.service.d/nix.conf
nix-store --query --requisites ~/.local/state/nix/profiles/jellyfin | while read requisite; do
  echo "BindPaths=${requisite}" >> ~/.config/systemd/user/jellyfin.service.d/nix.conf
done
