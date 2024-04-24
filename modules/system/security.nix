{ pkgs, config, lib, ... }: 
{
  security.rtkit.enable = true;
  #security.pam.services.swaylock = { };
}
