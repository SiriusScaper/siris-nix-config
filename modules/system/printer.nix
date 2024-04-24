{ config, lib, pkgs, ... }:

{
  # Enable Scanner Support
  hardware.sane = {
     enable = true;
     extraBackends = [ pkgs.sane-airscan  ];
  };
}
