{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            fonts.fontconfig.enable = true;
            home.packages = with pkgs; [
                nerd-fonts.fira-code
                nerd-fonts.jetbrains-mono
                nerd-fonts.iosevka
                nerd-fonts.iosevka-term
                nerd-fonts.bigblue-terminal
                nerd-fonts.symbols-only
            ];
        };
    };
}