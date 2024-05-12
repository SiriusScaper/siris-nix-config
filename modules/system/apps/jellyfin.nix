{ pkgs, config, lib, ... }:

{
  services.jellyfin.enable = true;

  services.caddy = {
      enable = true;
      virtualHosts = {
         "https://my-jellyfin.nixos.com".extraConfig = ''
           reverse_proxy 127.0.0.1:8096
           '';
      };
    };
}

