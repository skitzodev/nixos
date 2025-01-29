{ config, ... }:

{
  networking.hostName = "blackbox"; # Define your hostname.
  networking.networkmanager.enable = true;
}