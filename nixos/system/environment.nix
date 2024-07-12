{ pkgs, ... }:

{
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        #jetbrains.goland
        gnome3.gnome-tweaks # tweaks
        dart-sass           # dart sass for hugo
        hugo                # hugo
        gnumake             # for makefile
        tor-browser         # tor browser
        doas                # alternative of sudo
        pgcli               # Rich command-line interface for PostgreSQL with auto-completion and syntax highlighting

        # for rust
        rustup
        gcc

        # for go
        #go-tools
        #gopls

        go-migrate
        go-swagger
        golangci-lint
        gosec
        go-mockery
        ddosify
        air

        # for java
        jdk17
        
        # JS ecosystem
        nodejs_21
        fnm # fast and simple Node.js version manager
        typescript

        # for gnome extension
        gnome-extension-manager
        gnomeExtensions.burn-my-windows
        gnomeExtensions.blur-my-shell
        gnomeExtensions.compiz-windows-effect
        gnomeExtensions.logo-menu
        gnomeExtensions.space-bar
        gnomeExtensions.top-bar-organizer

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
