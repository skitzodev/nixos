{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    qbittorrent
    neofetch
    lolcat
    git
    nautilus
    btop
    wget
    unzip
    vlc
  ];
}