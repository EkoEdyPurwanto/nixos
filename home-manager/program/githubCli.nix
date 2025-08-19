{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                gh = {
                    enable  = true;
                    package = pkgs.gh;
                    # settings = {};
                    # credentials = {};
                };
            };
        };
    };
}