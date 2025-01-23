{ config, pkgs, ... }:
{
    users.users.dev = {
    isNormalUser = true;
    description = "Dev";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
    ];
    shell = pkgs.zsh;
  };
}