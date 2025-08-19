{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                ripgrep = {
                    enable = true;
                    package = pkgs.ripgrep;
                };
            };
        };            
    };
}
