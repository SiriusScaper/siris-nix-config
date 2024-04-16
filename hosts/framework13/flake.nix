{

  description = "Framework 13 AMD flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager, ...  }:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
   in {
   nixosConfigurations = {
     tardis = lib.nixosSystem {
       inherit system;
       modules = [ 
	./configuration.nix
	nixos-hardware.nixosModules.framework-13-7040-amd
	];
      };
    };
    homeConfigurations = {
      sirius = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix  ];
      };
    };
  };

}
