{ pkgs, config, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.kernelPackages = pkgs.linuxPackages_6_8;
#  boot.kernelParams = [ "nvidia-drm.modeset=1" "nvidia-drm.fndev=1" ];
}
