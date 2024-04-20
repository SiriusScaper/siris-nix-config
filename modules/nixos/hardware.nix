{ pkgs, config, lib, ... }:
{  
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };
  hardware.enableRedistributableFirmware = true;
}
