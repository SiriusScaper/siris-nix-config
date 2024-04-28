{ pkgs, config, ... }: 
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/system
  ];

   environment.systemPackages = with pkgs; [
      fprintd
#     acpi
#     brightnessctl
#     cpupower-gui
#     powertop
   ];
#
   services = {
#     # thermald.enable = true;
#     # cpupower-gui.enable = true;
     power-profiles-daemon.enable = true;
     fwupd.enable = true;
   };
 }
