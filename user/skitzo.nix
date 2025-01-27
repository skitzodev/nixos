{ config, pkgs, ... }:
{
    users.users.skitzo = {
    isNormalUser = true;
    description = "Skitzo";
    extraGroups = [ "networkmanager" "wheel" "podman" ];
    packages = with pkgs; [
    #  thunderbird
    ];
    shell = pkgs.zsh;
  };
}