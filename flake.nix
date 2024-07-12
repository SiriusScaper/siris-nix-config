{
  description = "Refactor NixOS Config - July 2024";
    inputs = {
      
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      
      nur.url = "github:nix-community/NUR";

      alejandra.url = "github:kamadorueda/alejandra/3.0.0";

      nix-gaming.url = "github:fufexan/nix-gaming";
    
      nixos-cosmic = {
        url = "github:lilyinstarlight/nixos-cosmic";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    };

  outputs = { nixpkgs, self, ...} @ inputs:
  let
#     selfPkgs = import ./pkgs;
    username = "sirius";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
#     overlays.default = selfPkgs.overlay;
    nixosConfigurations = {
      FarScape-One = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ (import ./hosts/desktop) ];
        specialArgs = { host="FarScape-One"; inherit self inputs username ; };
      };
      tardis = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ 
          {
            nix.settings = {
              substituters = [ "https://cosmic.cachix.org/" ];
              trusted-public-keys = ["cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE="];
            };
          }
        (import ./hosts/laptop); 
        nixos-cosmic.nixosModules.default
        ];
        specialArgs = { host="tardis"; inherit self inputs username; };
      };
    };
  };
}
