{
  description = "System configuration";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

    # catppuccin theme
    catppuccin.url = "github:catppuccin/nix";

    # nvim nvf
    nvf.url = "github:notashelf/nvf";

    # home-manager for user config
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
 };

  outputs = {self, nixpkgs, catppuccin, nvf, home-manager, ...}@inputs: {

    packages."x86_64-linux".default = 
      (nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
	modules = [ ./nvim/nvf_config.nix ];
      }).neovim;

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_x64-linux";
      modules = [
        catppuccin.nixosModules.catppuccin
        ./nixos/configuration.nix	
	nvf.nixosModules.default
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.theo = {
            imports = [
              ./home/home.nix
            ];
          };
        }
      ];
    };
  };
}

