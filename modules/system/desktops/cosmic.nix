{ sekf, nixpkgs, nixos-cosmic, pkgs, config, ... }:

{
  services = {
    desktopManager.cosmic = { 
       enable = true;
    };
    displayManager.cosmic-greeter = {
       enable = true;
  };
 };
}
