{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
    ./bootloader.nix
    ./desktops/plasma6.nix
    ./flatpak.nix
    ./hardware.nix
    #./xserver.nix
    ./network.nix
    ./nvidia.nix
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
