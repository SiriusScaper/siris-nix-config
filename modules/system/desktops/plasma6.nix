{ pkgs, config, ... }:

{
  services.xserver = {
    enable = true;
    xkb = {
     layout = "us";
     variant = "";
    };
    libinput.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    desktopManager.plasma6 = {
      enable = true;
    };
  };
}
