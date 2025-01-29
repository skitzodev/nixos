{ config, ... }:
{
    imports = [
    ./starship.nix
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
      c = "code .";
      fetch = "neofetch | lolcat";
      cls = "clear";
      g = "git";
      q = "exit";
      py = "python3";
      server = "python3 -m http.server 6969";
      ipa = "ip a | grep 192.168 | awk '{print $2}' | cut -d '/' -f 1";
      upgrade = "sudo nixos-rebuild switch --flake ~/Documents/nixos/";
    };
    ohMyZsh = {
      enable = true;
      plugins = [ "git" "podman" ];
      theme = ""; # Uses starship
    };

    histSize = 10000;
  };
}