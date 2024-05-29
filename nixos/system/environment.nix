{ pkgs, ... }:

{
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        jetbrains.goland
        gnome3.gnome-tweaks
        dart-sass
        hugo
        gnumake # for makefile
        tor-browser
        doas    # alternative of sudo

        # for rust
        rustup
        gcc

        # for go
        go-migrate
        go-swagger
        golangci-lint
        gosec
        go-mockery
        ddosify
        air
    ];

    environment.gnome.excludePackages = with pkgs.gnome; [
        yelp        # help viewer
        epiphany    # web browser
        geary       # email client
        seahorse    # password manager
        gnome-weather
        gnome-contacts
        gnome-clocks
        gnome-calculator
        gnome-calendar
        gnome-system-monitor
        pkgs.gnome-tour
        gnome-maps
        gnome-logs
        pkgs.gnome-console
        pkgs.gnome-text-editor
    ];
}
