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
          name = "WhiteSur-Dark"; # Adwaita, Adwaita-dark
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