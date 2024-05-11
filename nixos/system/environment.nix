{ pkgs, ... }:

{
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        jetbrains.goland
        jetbrains-toolbox
        gnome3.gnome-tweaks
        spotify
        dart-sass
        hugo
        teams-for-linux
        go-migrate
        gnumake #for makefile
    ];
}
