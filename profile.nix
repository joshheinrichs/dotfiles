{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.buildEnv {
  name = "dotfiles";
  paths = with pkgs; [
    # avoid system packages for the most part
    coreutils
    bash
    neovim
    git
    atuin
    bash-preexec
    alacritty
    zellij
    fzf
    zoxide
    ripgrep
    bat
    htop
    # desktop junk
    firefox
    vlc
    spotify
    keepassxc
    # wayland screen sharing support
    discord-canary
  ];
}
