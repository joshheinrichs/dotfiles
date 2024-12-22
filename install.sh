#!/usr/bin/env bash

mkdir -p ~/.local/state/nix/profiles
nix-env -f packages.nix -iA packages --profile ~/.local/state/nix/profiles/josh

rsync --verbose --human-readable --archive --delete bashrc ~/.bashrc
rsync --verbose --human-readable --archive --delete bashrc.d/ ~/.bashrc.d/

rsync --verbose --human-readable --archive --delete config/git/ ~/.config/git/
rsync --verbose --human-readable --archive --delete config/atuin/ ~/.config/atuin/
