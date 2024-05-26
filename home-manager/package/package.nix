{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    gedit
                    trash-cli
                    fastfetch
                    wtf
                    nix-health # check the health of your nix setup
                    nix-search-cli # cli for searching package
                    libreoffice
                    teams-for-linux
                    pipes
                    cmatrix
                    cbonsai
                    tty-clock
                    nodejs_21
                    typescript
                ];
            };
        };
    };
}
