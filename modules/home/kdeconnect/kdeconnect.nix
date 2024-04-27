{ pkgs, config, ...}:

{
 services.kdeconnect = {
    enable = true;
    indicator.enable = true;
 };
}
