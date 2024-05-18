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
        gnumake #for makefile
        libreoffice
        tor-browser

        #for go
        go-migrate
        go-swagger
        golangci-lint
        gosec
        go-mockery
        ddosify
    ];
}
