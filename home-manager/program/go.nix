{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                go = {
                    enable  = true;
                    goPath  = ".go";
                    goBin   = ".go/bin";
                    package = pkgs.go;
                };
            };
        };
    };
}
