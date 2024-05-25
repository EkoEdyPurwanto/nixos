{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                alacritty = {
                    enable = true;
                    package = pkgs.alacritty;
                    settings = {
                        font = {
                            size = 14;
                            normal.family = "JetBrainsMono Nerd Font";
                            bold.family = "JetBrainsMono Nerd Font";
                            italic.family = "JetBrainsMono Nerd Font";
                        };
                        window = {
                            opacity = 0.80;
                            title = "󰲋  ";
                            decorations_theme_variant = "Dark";
                        };
                        scrolling = {
                            history = 10000;
                            multiplier = 3;
                        };
                        mouse = {
                            hide_when_typing = false;
                        };
                        cursor = {
                            style = "Beam";
                        };
                    };
                };
            };
        };
    };
}
