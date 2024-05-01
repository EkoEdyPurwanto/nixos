{ ... }:

let
    ver = "23.11";
in {
    imports = [
    ./boot.nix
    ./locale.nix
    ./networking.nix
    ./nixpkgs.nix
    ./timeZone.nix
    ./user.nix
    ./environment.nix
    ];
     system = {
        stateVersion = "${ver}";
     };
}