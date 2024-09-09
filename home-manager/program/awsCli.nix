{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                awscli = {
                    enable  = false;
                    package = pkgs.awscli2;
                    # settings = {};
                    # credentials = {};
                };
            };
        };
    };
}