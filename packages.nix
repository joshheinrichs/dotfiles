{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

{
  packages = [
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
    pkgs.firefox
    pkgs.vlc
    pkgs.spotify
    pkgs.keepassxc
    # wayland screen sharing support
    pkgs.discord-canary
  ];
}
