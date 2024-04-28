{
  description = "MediaCenter NixOS Configuration";

  inputs = {
    # nixpkgs.url = "nixpkgs/nixos-23.11";
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }:
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations =  {
        kodi = nixpkgs.lib.nixosSystem {
          # system = "x86_64-linux";
          system = "aarch64-linux";

          modules = [
            ./configuration.nix
            ./hardware-configuration.nix
            # ./nvidia.nix
            # ./disable-nvidia.nix
            ./opengl.nix
            # ./fingerprint-scanner.nix
            # I don't want yobikey
            #./yubikey.nix
            ./sound.nix
            ./usb.nix
            ./time.nix
            ./swap.nix
            ./bootloader.nix
            ./nix-settings.nix
            ./nixpkgs.nix
            ./gc.nix
            ./auto-upgrade.nix
            ./linux-kernel.nix
            ./screen.nix
            ./display-manager.nix
            ./theme.nix
            ./internationalisation.nix
            ./fonts.nix
            ./security-services.nix
            ./services.nix
            # ./printing.nix
            # ./gnome.nix
            ./hyprland.nix
            ./environment-variables.nix
            ./bluetooth.nix
            ./networking.nix
            # ./mac-randomize.nix
            ./open-ssh.nix
            ./firewall.nix
            ./dns.nix
            # ./vpn.nix
            ./users.nix
            # ./virtualisation.nix
            ./programming-languages.nix
            # ./lsp.nix
            # ./rust.nix
            # ./wasm.nix
            ./info-fetchers.nix
            ./utils.nix
            ./terminal-utils.nix
            # ./work.nix
          ];
      };
    };
  };
}
