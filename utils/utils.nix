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
    spotify
    whois
    gimp
    nomachine-client
    dbeaver-bin
  ];
  # Install firefox.
  programs.firefox.enable = true;
}
