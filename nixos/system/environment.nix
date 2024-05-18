{ pkgs, ... }:

{
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        jetbrains-toolbox
        jetbrains.goland
        gnome3.gnome-tweaks
        dart-sass
        hugo
        teams-for-linux
        go-migrate
        gnumake #for makefile
        libreoffice
        tor-browser
    ];
}