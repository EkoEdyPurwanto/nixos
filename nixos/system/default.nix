{ ... }:

let
    ver = "24.05";
in {
    imports = [
        ./boot.nix
        ./locale.nix
        ./networking.nix
        ./nixpkgs.nix
        ./timeZone.nix
        ./user.nix
        ./environment.nix
        ./security.nix
    ];
    system = {
        stateVersion = "${ver}";
    };
}