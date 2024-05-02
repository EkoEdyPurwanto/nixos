{ pkgs, ... }:
let
    name = "eep";
in {
    virtualisation = {
        docker = {
            enable = true;
            enableOnBoot = true;
            package = pkgs.docker;
            autoPrune = {
                enable = false;
            };
        };
    };
}