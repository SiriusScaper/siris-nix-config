# {
#   description = "Nixos config flake";
#
#   inputs = {
#     nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
#     #nur.url = "github:nix-community/NUR";
#
#       home-manager = {
#         url = "github:nix-community/home-manager";
#         inputs.nixpkgs.follows = "nixpkgs";
#       };
#   };
#
#   outputs = { self, nixpkgs, ... }@inputs:
#     let
#       system = "x86_64-linux";
#       pkgs = nixpkgs.legacyPackages.${system};
#     in
#     {
#      nixosConfigurations.FarScape-One = nixpkgs.lib.nixosSystem {
#       specialArgs = {inherit inputs;};
#       modules = [
#         ./hosts/homedesktop/configuration.nix
#         inputs.home-manager.nixosModules.default
#       ];
#     };
#   };
# }

{
  description = "SiriusScaper's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur.url = "github:nix-community/NUR";

    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";

    nix-gaming.url = "github:fufexan/nix-gaming";

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, self, ...} @ inputs:
  let
    selfPkgs = import ./pkgs;
    username = "sirius";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
    overlays.default = selfPkgs.overlay;
    nixosConfigurations = {
      FarScape-One = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ (import ./hosts/desktop) ];
        specialArgs = { host="desktop"; inherit self inputs username ; };
      };
      laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ (import ./hosts/laptop) ];
        specialArgs = { host="laptop"; inherit self inputs username ; };
      };
    };
  };
}
