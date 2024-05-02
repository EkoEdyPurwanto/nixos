{ pkgs, ... }:

let
  name = "eep";
in {
    home-manager = {
        users.${name} = {
            gtk = {
                enable = true;
                font = {
                name = "Iosevka NF SemiBold";
                size= 11;
                };
                theme = {
                name = "WhiteSur-Dark"; # WhiteSur-Dark-solid, WhiteSur-Light, WhiteSur-Light-solid
                package = pkgs.whitesur-gtk-theme;
                };
                iconTheme = {
                name = "candy-icons";
                package = pkgs.candy-icons;
                };
                cursorTheme = {
                name = "Bibata-Modern-Ice";
                package = pkgs.bibata-cursors;
                size = 18;
                };
            };
        };
    };
}