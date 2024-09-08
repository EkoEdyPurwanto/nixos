{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    ### GUI ###
                    gedit
                    libreoffice
                    # cool-retro-term
                    telegram-desktop
                    # xautoclick
                    # protonvpn-gui
                    # monero-gui  # An open-source graphical user interface (GUI) wallet developed by the Monero community
                    #teams-for-linux # microsoft teams for linux
                    #anydesk
                    
                    ### TUI ###
                    trashy          # if you do the command 'rm' or 'rm -rf' in the terminal it is automatically placed in the trash
                    wtf             # wtfutil for run
                    nix-health      # check the health of your nix setup
                    nix-search-cli  # cli for searching package
                    pipes           # pipes.sh for run
                    cmatrix         # matrix like hengker pro Tzy
                    cbonsai         # bonsai ASCII art
                    tty-clock       # to display the current time on terminal
                ];
            };
        };
    };
}
