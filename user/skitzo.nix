{ config, pkgs, ... }:
{
    users.users.skitzo = {
    isNormalUser = true;
    description = "Skitzo";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      discord
    #  thunderbird
    ];
    shell = pkgs.zsh;
  };
}