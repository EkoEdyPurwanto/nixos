{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                go = {
                    enable = true;
                    goPath = ".go";
                    goBin = ".go/bin";
                    package = pkgs.go;
                    # package = pkgs.go_1_22;
                };
            };
        };
    };
}
