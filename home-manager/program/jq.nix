{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                jq = {
                    enable  = true;
                    package = pkgs.jq;
                };
            };
        };
    };
}