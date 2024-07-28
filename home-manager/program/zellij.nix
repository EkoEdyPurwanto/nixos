{ pkgs, ... }:

let
    name = "eep";
in {   
    home-manager = {
        users.${name} = {
            programs = {
                zellij = {
                    enable                = true;
                    package               = pkgs.zellij;
                };
            };
        };
    };
}