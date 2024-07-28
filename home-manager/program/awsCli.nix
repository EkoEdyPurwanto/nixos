{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                awscli = {
                    enable  = true;
                    package = pkgs.awscli2;
                    # settings = {};
                    # credentials = {};
                };
            };
        };
    };
}