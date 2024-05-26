{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    ./bootloader.nix
    ./desktops/cosmic.nix.nix
    ./apps/flatpak.nix
    ./apps/fix-electron.nix
    ./apps/gamemode.nix
    ./apps/steam.nix
    #./apps/kdeconnect.nix
    #./apps/kde-partition.nix
    ./apps/lutris.nix
    ./apps/bottles.nix
    ./apps/protonmail.nix
    ./apps/zed-editor.nix
    ./hardware.nix
    #./xserver.nix
    ./network.nix
    #./nvidia.nix
    ./pipewire.nix
    ./program.nix
    ./printer.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
   #[ (import ./cloudflare-warp.nix) ]
   #[ (import ./virtualization.nix) ];
  ];
}
