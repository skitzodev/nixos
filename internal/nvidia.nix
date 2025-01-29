{ config, ... }:

{
  hardware.graphics = {
    enable = true;
  };
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;

  };
}