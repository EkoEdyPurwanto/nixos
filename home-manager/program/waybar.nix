{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                waybar = {
                    enable = true;
                    package = pkgs.waybar;
                    settings = {
                        mainBar = {
                            layer = "top";
                            position = "top";
                            height = 30;
                            output = [
                                "eDP-1"
                                "HDMI-A-1"
                            ];
                            modules-left = [ "wlr/taskbar" ];
                            modules-center = [ "hyprland/workspaces" ];
                            modules-right = [ "mpd" "custom/mymodule#with-css-id" "network" ];
                            
                            "network" = {
                                format = " ";
                                format-disconnected = "睊 Disconnected";
                                tooltip = true;
                                on-click = "nm-connection-editor";
                            };

                            "hyprland/workspaces" = {
                                disable-scroll = false;
                                all-outputs = true;
                                format = "{icon}";
                                format-icons = {
                                    "1" = "";
                                    "2" = "";
                                    "3" = "";
                                    "4" = "";
                                    "5" = "";
                                    "6" = "";
                                    "7" = "";
                                    "8" = "";
                                    "9" = "";
                                    "10" = "";
                                    "active" = "";
                                    "default" = "";
                                };
                                persistent-workspaces = {
                                    "*" = [ 1 2 3 4 5 6 7 8 9 10 ];
                                };
                            };
                        };
                    };
                };
            };
        };
    };
}
