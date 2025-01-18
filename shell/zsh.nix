{ config, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

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
      dry = "docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -e DOCKER_HOST=$DOCKER_HOST moncho/dry";

    };
    ohMyZsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "fino";
    };

    histSize = 10000;
  };
}