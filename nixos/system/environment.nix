{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        dmidecode           # A tool that reads information about your system's hardware from the BIOS according to the SMBIOS/DMI standard
        #jetbrains.goland
        gnome3.gnome-tweaks # tweaks
        dart-sass           # dart sass for hugo
        hugo                # hugo
        gnumake             # for makefile
        tor-browser         # tor browser
        doas                # alternative of sudo
        pgcli               # Rich command-line interface for PostgreSQL with auto-completion and syntax highlighting
        curl                # curl
        wget                # wget
        pika-backup         # pika backup for backup data
        # virtualbox          # virtual machine
        
        # db clients
        # dbeaver-bin         # multi clients database
        # robo3t              # RoboMongo, mongodb client
        # redisinsight      # redis insight, redis client

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

        # for gnome extension
        gnome-extension-manager
        gnomeExtensions.burn-my-windows
        gnomeExtensions.blur-my-shell
        gnomeExtensions.compiz-windows-effect
        gnomeExtensions.logo-menu
        gnomeExtensions.space-bar
        # gnomeExtensions.top-bar-organizer     #broken

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
