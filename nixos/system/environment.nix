{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        swww
        rofi-wayland
        dmidecode           # A tool that reads information about your system's hardware from the BIOS according to the SMBIOS/DMI standard
        #jetbrains.goland
        brave
        dart-sass           # dart sass for hugo
        brightnessctl       # brightness control
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
    ];
}
