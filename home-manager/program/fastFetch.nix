{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                fastfetch = {
                    enable  = true;
                    package = pkgs.fastfetch;
                };
            };
        };
    };
}
