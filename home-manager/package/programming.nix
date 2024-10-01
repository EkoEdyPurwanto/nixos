{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    ## PROGRAMMING LANG ##
                    nodejs_22
                ];
            };
        };
    };
}
