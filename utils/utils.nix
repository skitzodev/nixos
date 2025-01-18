{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    neofetch
    lolcat
    git
    mullvad-vpn
    qbittorrent
  ];
}