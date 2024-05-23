{ pkgs, config, lib, ... }:

{
  services.desktopManager.plasma6.enable = true;
  services.xserver.xkb = {
    layout = "us";
  #  variant = "";
   };
  services.libinput.enable = true;
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
  services.displayManager.sddm = {
    enable = true;
    wayland = {
      enable = true;
      compositor = "kwin";
    };
  };
}
