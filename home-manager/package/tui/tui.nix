{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    ### TUI ###
                    wtfutil         # wtfutil for run
                    pipes           # pipes.sh for run
                    cmatrix         # matrix like hengker pro Tzy
                    cbonsai         # bonsai ASCII art
                    tty-clock       # to display the current time on terminal
                    # cointop       # cryptocurrency tracking like htop
                    networkmanagerapplet
                ];
            };
        };
    };
}
