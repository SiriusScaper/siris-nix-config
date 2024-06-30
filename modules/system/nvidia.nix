{ pkgs, config, lib, ... }:

{

  boot.kernelParams = [ "nvidia-drm.modese=1" "nvidia-drm.fndev=1" ];
  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"]; # or "nvidiaLegacy470 etc.

  hardware.nvidia = {
   modesetting.enable = true;
   powerManagement.enable = false;
   powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.production;
  };
}
