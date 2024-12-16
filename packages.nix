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
    pkgs.ripgrep
    pkgs.bat
    pkgs.firefox
    pkgs.vlc
    pkgs.spotify
  ];
}
