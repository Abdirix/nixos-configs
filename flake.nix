{
  description = "Abdi's NixOS server configurations";

  # Dependencies used by this configuration
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  # Systems provided by this flake
  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {

      # Test Server
      test-server = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/test-server/configuration.nix
        ];
      };

      # Build Server
      build-server = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/build-server/configuration.nix
        ];
      };

    };
  };
}


