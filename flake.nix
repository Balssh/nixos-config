{
  description = "Balssh NixOS Config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    hypr-contrib.url = "github:hyprwm/contrib";

    hyprpicker.url = "github:hyprwm/hyprpicker";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.1";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland = {
      type = "git";
      url = "https://github.com/hyprwm/Hyprland";
      submodules = true;
    };

    aagl = {
      url = "github:ezKEa/aagl-gtk-on-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      self,
      disko,
      ...
    }@inputs:
    let
      username = "balssh";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
        laptop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/laptop
          ];
          specialArgs = {
            host = "laptop";
            inherit self inputs username;
          };
        };
        server = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            disko.nixosModules.disko
            ./hosts/server
          ];
          specialArgs = {
            host = "homelab";
            inherit self inputs username;
          };
        };
      };

      homeConfigurations = {
        work = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [
            ./modules/home/work
          ];

          extraSpecialArgs = {
            inherit inputs username;
          };
        };
      };
    };
}
