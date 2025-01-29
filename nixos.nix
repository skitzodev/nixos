# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./user/skitzo.nix
      ./user/dev.nix
      ./hardware-configuration.nix

      ./internal/audio.nix
      ./internal/ble.nix
      ./internal/bootloader.nix
      ./internal/display.nix
      ./internal/locale.nix
      ./internal/networking.nix
      ./internal/nvidia.nix
      ./internal/printer.nix
      ./internal/virt.nix

      ./shell/zsh.nix

      ./utils/code.nix
      ./utils/langs.nix
      ./utils/obs.nix
      ./utils/social.nix
      ./utils/terminal.nix
      ./utils/utils.nix
    ];
 
  
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.05";

}
