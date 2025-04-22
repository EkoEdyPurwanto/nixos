{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    protonvpn-gui
                ];
            };
        };
    };
}
