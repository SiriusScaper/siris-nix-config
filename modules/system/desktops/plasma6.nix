{ pkgs, config, lib, ... }:

{
#  .desktopManager.plasma6.enable = true;
  services.xserver.xkb = {
    layout = "us";
  #  variant = "";
   };
  services.libinput.enable = true;
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;
}
