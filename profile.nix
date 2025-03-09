{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

pkgs.buildEnv {
  name = "dotfiles";
  paths = with pkgs; [
    # avoid system packages for the most part
    pkgs.coreutils
    pkgs.bash
    pkgs.neovim
    pkgs.git
    pkgs.atuin
    pkgs.bash-preexec
    pkgs.alacritty
    pkgs.zellij
    pkgs.fzf
    pkgs.zoxide
    pkgs.ripgrep
    pkgs.bat
    pkgs.htop
    # desktop junk
    pkgs.firefox
    pkgs.vlc
    pkgs.spotify
    pkgs.keepassxc
    # wayland screen sharing support
    pkgs.discord-canary
  ];
}
