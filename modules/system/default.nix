{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    # Bootloader
    ./bootloader.nix

    # Desktop Environment
    (if host == "FarScape-One" then
    ./desktops/plasma6.nix
    else
    ./desktops/cosmic.nix)

    # Core System Configurations
    ./hardware.nix
    ./network.nix
    ./nvidia.nix
    ./sound.nix
    ./system.nix

    # Applications
    ./apps/flatpak.nix
    ./apps/fix-electron.nix
    ./apps/gamemode.nix
    ./apps/steam.nix
    ./apps/kdeconnect.nix
    ./apps/kde-partition.nix
    ./apps/lutris.nix
    ./apps/bottles.nix
    ./apps/nexusmods-app.nix
    ./apps/protonmail.nix
    ./apps/zed-editor.nix

    #./xserver.nix
    ./program.nix
    ./printer.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
  ];
}
