{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            gtk = {
                enable = true;

                # FONT
                font = {
                    name = "Iosevka NF SemiBold";
                    size = 11;
                };

                # THEME
                theme = {
                    name    = "WhiteSur-Dark"; # WhiteSur-Dark-solid, WhiteSur-Light, WhiteSur-Light-solid
                    package = pkgs.whitesur-gtk-theme;
                };

                # ICON THEME
                iconTheme = {
                    name    = "candy-icons";
                    package = pkgs.candy-icons;
                };

                # CURSOR THEME
                cursorTheme = {
                    name    = "Bibata-Modern-Ice";
                    package = pkgs.bibata-cursors;
                    size    = 18;
                };
            };
        };
    };
}