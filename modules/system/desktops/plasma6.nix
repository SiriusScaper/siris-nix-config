{ pkgs, config, lib, ... }:

{
  services.desktopManager.plasma6.enable = true;
  services.xserver.xkb = {
    layout = "us";
  #  variant = "";
   };
  services.libinput.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.displayManager.sddm.wayland.enable = false;
}
