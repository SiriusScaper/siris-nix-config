{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.nexusmods-app
  ];
}
