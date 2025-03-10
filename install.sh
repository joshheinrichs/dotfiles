#!/usr/bin/env bash

nix-env --set --file ./profile.nix
# nix build --profile ~/.local/state/nix/profiles/profile --no-link

rsync --verbose --human-readable --archive --delete bashrc ~/.bashrc
rsync --verbose --human-readable --archive --delete bashrc.d/ ~/.bashrc.d/
rsync --verbose --human-readable --archive --delete config/git/ ~/.config/git/
rsync --verbose --human-readable --archive --delete config/atuin/ ~/.config/atuin/
