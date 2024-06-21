{ pkgs, config, lib, ... }:
{  
  #hardware.opengl = {
   # enable = true;
    #driSupport = true;
    #driSupport32Bit = true;
  #};

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };
  
  hardware.enableRedistributableFirmware = true;
}
