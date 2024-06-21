{ pkgs, config, lib, ... }: 
{
  networking = {
    wireless.userControlled.enable = true;
    wireless.enable = true;
    hostName = "tardis";
  #  networkmanager.enable = true;
    #nameservers = [ "1.1.1.1" ];
    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 8096 ];
      allowedUDPPorts = [ 59010 59011 8096 ];
      # allowedUDPPortRanges = [
        # { from = 4000; to = 4007; }
        # { from = 8000; to = 8010; }
      # ];
    };
  };
}
