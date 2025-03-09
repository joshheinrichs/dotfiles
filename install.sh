#!/usr/bin/env bash

nix-env --set --file ./profile.nix

rsync --verbose --human-readable --archive --delete bashrc ~/.bashrc
rsync --verbose --human-readable --archive --delete bashrc.d/ ~/.bashrc.d/
rsync --verbose --human-readable --archive --delete config/git/ ~/.config/git/
rsync --verbose --human-readable --archive --delete config/atuin/ ~/.config/atuin/
