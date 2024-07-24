{ pkgs, config, lib, ... }:

{
  services.jellyfin = { 
    enable = true;
    openFirewall = true;
    user = "sirius";
  };

  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];
}

