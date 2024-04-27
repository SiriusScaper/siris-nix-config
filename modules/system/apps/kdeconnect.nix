{ pkgs, ... }:
{  
  environment.systemPackages = [
    pkgs.kdePackages.kdeconnect-kde
  ];

  programs.kdeconnect.enable = true;
}
