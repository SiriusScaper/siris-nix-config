{ pkgs, ... }:
{  
  environment.systemPackages = [
    pkgs.kdePackages.kdeconnect-kde
  ];

  programs.kdeconnect-kde.enable = true;
}
