{ pkgs, config, lib, ... }:

{
  services = {
    desktopManager.plasma6 = {
      enable = true;
    };
    displayManager = {
      defaultSession = "plasma";
      sddm = {
        enable = true;
        wayland.enable = true;
      };
    };
  };
#  .desktopManager.plasma6.enable = true;
  services.xserver.xkb = {
    layout = "us";
  #  variant = "";
   };
  services.libinput.enable = true;
  services.xserver.enable = true;
 # services.xserver.displayManager.sddm.enable = true;
 # services.xserver.displayManager.sddm.wayland.enable = false;
}
