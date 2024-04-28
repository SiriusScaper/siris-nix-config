{ pkgs, config, lib, ... }:
{  
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  
  hardware.enableRedistributableFirmware = true;
}
