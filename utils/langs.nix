{ config, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
  nodejs_22
  python39
  rustc
];

}
