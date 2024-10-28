{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    ### GUI ###
                    # github-desktop
                    gedit
                    libreoffice
                    # cool-retro-term
                    telegram-desktop
                    # xautoclick
                    # protonvpn-gui
                    # monero-gui  # An open-source graphical user interface (GUI) wallet developed by the Monero community
                    #teams-for-linux # microsoft teams for linux
                    #anydesk
                ];
            };
        };
    };
}
