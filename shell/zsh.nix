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
    };
    ohMyZsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "fino";
    };

    histSize = 10000;
  };
}