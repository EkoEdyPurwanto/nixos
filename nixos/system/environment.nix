{ pkgs, ... }:

{
    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        jetbrains.goland
        jetbrains-toolbox
        gnome-tweaks
        spotify
        dart-sass
        hugo
    ];
}