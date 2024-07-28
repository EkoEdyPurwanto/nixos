{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                alacritty = {
                    enable = false;
                    package = pkgs.alacritty;
                    settings = {
                        font = {
                            size          = 12;
                            normal.family = "JetBrainsMono Nerd Font";
                            bold.family   = "JetBrainsMono Nerd Font";
                            italic.family = "JetBrainsMono Nerd Font";
                        };
                        window = {
                            opacity                   = 0.80;
                            title                     = "󰲋  ";
                            decorations               = "Full";
                            decorations_theme_variant = "None";
                        };
                        scrolling = {
                            history    = 10000;
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
