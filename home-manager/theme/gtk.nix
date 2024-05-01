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
          name = "Adwaita-dark"; # Adwaita, Adwaita-dark
          package = pkgs.gnome.gnome-themes-extra;
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
        gtk2.extraConfig = ''
          gtk-application-prefer-dark-theme=1
          gtk-button-images=0
          gtk-menu-images=0
          gtk-xft-antialias=1
          gtk-xft-dpi=98304
          gtk-xft-hinting=1
          gtk-xft-hintstyle="hintslight"
          gtk-xft-rgba="none"
        '';
        gtk3.extraConfig = {
          gtk-application-prefer-dark-theme=true;
          gtk-button-images=false;
          gtk-key-theme-name="Default";
          gtk-menu-images=false;
          gtk-overlay-scrolling=true;
          gtk-xft-antialias=1;
          gtk-xft-dpi=98304;
          gtk-xft-hinting=1;
          gtk-xft-hintstyle="hintslight";
          gtk-xft-rgba="none";
        };
        gtk4.extraConfig = {
          gtk-application-prefer-dark-theme=true;
          gtk-overlay-scrolling=true;
          gtk-xft-antialias=1;
          gtk-xft-dpi=98304;
          gtk-xft-hinting=1;
          gtk-xft-hintstyle="hintslight";
          gtk-xft-rgba="none";
        };
      };
    };
  };
}