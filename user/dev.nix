{ config, pkgs, ... }:
{
    users.users.dev = {
    isNormalUser = true;
    description = "Dev";
    extraGroups = [ "networkmanager" "wheel" "podman" ];
    packages = with pkgs; [
    ];
    shell = pkgs.zsh;
  };
}
