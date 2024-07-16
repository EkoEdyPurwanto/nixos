{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                zoxide = {
                    enable = true;
                    enableBashIntegration = true;
                    package = pkgs.zoxide;
                    options = [
                        "--cmd cd" #replace cd with z and zi
                    ];
                };
            };
        };
    };
}