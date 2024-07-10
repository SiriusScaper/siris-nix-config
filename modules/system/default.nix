{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [

    # Desktop Environment
    #(if host == "FarScape-One" then
    #./desktops/plasma6.nix
    #else
    #./desktops/cosmic.nix)

    # Applications
    ./apps/gamemode.nix
    ./apps/steam.nix
    ./apps/jellyfin.nix

    # Bootloader
    ./bootloader.nix

    # Core System Configurations
    ./hardware.nix
    ./network.nix
    #./nvidia.nix
    ./sound.nix
    ./system.nix
    ./desktop-environment.nix
    #./xserver.nix
    ./program.nix
    ./printer.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
    #./wayland.nix
  ];
}
