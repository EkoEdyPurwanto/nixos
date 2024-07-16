{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    # desktop app
                    gedit
                    libreoffice
                    #teams-for-linux # microsoft teams for linux

                    trash-cli
                    wtf             # wtfutil for run
                    nix-health      # check the health of your nix setup
                    nix-search-cli  # cli for searching package
                    pipes
                    cmatrix
                    cbonsai
                    tty-clock
                ];
            };
        };
    };
}
