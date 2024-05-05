{ pkgs, config, ... }:

{
  services.desktopManager = {
    plasma6.enable = true;
   };
  services.xserver.xkb = {
    layout = "us";
    variant = "";
   };
  services.libinput.enable = true;
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    };
}
