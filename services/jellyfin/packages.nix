{ pkgs ? import <nixpkgs> {} }:

{
  packages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];
}
