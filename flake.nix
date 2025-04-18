{
  description = "System configuration";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # catppuccin theme
    catppuccin.url = "github:catppuccin/nix";

    # nvim nvf
    nvf.url = "github:notashelf/nvf";

    # home-manager for user config
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
 };

  outputs = {self, nixpkgs, catppuccin, nvf, home-manager, ...}@inputs: {

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_x64-linux";
      modules = [
        catppuccin.nixosModules.catppuccin
        nvf.nixosModules.default
        ./nixos/configuration.nix	
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

