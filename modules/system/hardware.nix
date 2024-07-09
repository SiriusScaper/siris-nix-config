{ pkgs, config, lib, ... }:
{  
  #hardware.opengl = {
   # enable = true;
    #driSupport = true;
    #driSupport32Bit = true;
  #};

  # Enable bluetooth support
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };
  
  hardware.enableRedistributableFirmware = true;

  # Enable Scanner Support
  hardware.sane = {
     enable = true;
     extraBackends = [ pkgs.sane-airscan  ];
  };

}
