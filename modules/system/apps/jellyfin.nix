{ pkgs, config, lib, ... }:

{
  services.jellyfin = { 
    enable = true;
    openFirewall = true;
    user = "sirius";
  };
}

