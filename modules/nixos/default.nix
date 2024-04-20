{ inputs, nixpkgs, self, username, host, ...}:
{
  imports = [
   import ./bootloader.nix
   import ./desktops/plasma6.nix
   import ./flatpak.nix
   import ./hardware.nix
   import ./xserver.nix
   import ./network.nix
   import ./nvidia.nix
   import ./pipewire.nix
   import ./program.nix
   import ./scanners.nix
   import ./security.nix
   import ./services.nix
   import ./system.nix
   import ./user.nix
   import ./wayland.nix
   #[ (import ./cloudflare-warp.nix) ]
   #[ (import ./virtualization.nix) ];
  ];
}
