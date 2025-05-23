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
    fzf
    zoxide
    ripgrep
    bat
    htop
    btop
    pstree
    parallel
    sd
    delta
    syncthing
    # desktop junk
    firefox
    vlc
    spotify
    keepassxc
    qbittorrent
    obsidian
    # wayland screen sharing support
    discord-canary
  ]
  ++ pkgs.lib.optionals (stdenv.isLinux) [
    lurk
  ];
}
