{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        swww
        rofi-wayland
        dmidecode           # A tool that reads information about your system's hardware from the BIOS according to the SMBIOS/DMI standard
        dart-sass           # dart sass for hugo
        brightnessctl       # brightness control
        hugo                # hugo
        gnumake             # for makefile
        doas                # alternative of sudo
        pgcli               # Rich command-line interface for PostgreSQL with auto-completion and syntax highlighting
        curl                # curl
        gcc                 # GNU Compiler Collection
        wget                # wget
        networkmanagerapplet

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
