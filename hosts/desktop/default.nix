# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
/*
{ config, pkgs, inputs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
    ];


  # Set a Default DM
  services.xserver.displayManager.defaultSession = "plasma";

  
  # Enable flatpak support
  services.flatpak.enable = true;
   


  home-manager = {
    # also pass inputs to home-manager modules
    extraSpecialArgs = { inherit inputs; };
    users = {
      "sirius" = import ./home.nix;
    };
  };



  nix.settings.experimental-features = ["nix-command" "flakes"];
}*/


{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/system
  ];
};

#   powerManagement.cpuFreqGovernor = "performance";
}
