#!/usr/bin/env bash

mkdir -p ~/.local/state/nix/profiles
nix-env -f packages.nix -iA packages --profile ~/.local/state/nix/profiles/josh

cp bashrc ~/.bashrc
cp -r bashrc.d ~/.bashrc.d

cp gitconfig ~/.gitconfig
cp -r gitconfig.d ~/.gitconfig.d
