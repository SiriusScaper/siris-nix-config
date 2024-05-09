{ pkgs, config, lib, ... }:

{
  services.jellyfin.enable = true;

  services.caddy = {
      enable = true;
      #virtualHosts = { 
        
      #};
    };
}

