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
                    systemd = {
                        enable = false;
                        target = "graphical-session.target";
                    };
                    settings = {
                        mainBar = {
                            layer = "top";
                            position = "top";
                            width = 1328;
                            margin-top = 10;
                            
                            # left
                            modules-left = [ "custom/appLauncher" "clock" ];
                            "custom/appLauncher" = {
                                format = " ";
                                tooltip = false;
                                on-click = "rofi -show drun";
                            };
                            "clock" = {
                                format = "{:%a, %d %b %Y | %H:%M}";
                                interval = 1;
                                locale = "id_ID.UTF-8";
                            };
                            # center
                            modules-center = [ "hyprland/workspaces" ];
                            "hyprland/workspaces" = {
                                disable-scroll = true;
                                all-outputs = true;
                                on-click = "activate";
                                persistent-workspaces = {
                                    "1" = "[]";
                                    "2" = "[]";
                                    "3" = "[]";
                                    "4" = "[]";
                                    "5" = "[]";
                                    "6" = "[]";
                                    "7" = "[]";
                                    "8" = "[]";
                                    "9" = "[]";
                                    "10" = "[]";
                                };
                            };

                            # right
                            modules-right = [ "mpd" "pulseaudio" "network" "custom/powermenu" ];
                            "mpd" = {
                                format = "{artist}: {title}";
                                on-click = "mpc toggle";
                                interval = 2;
                            };
                            "pulseaudio" = {
                                scroll-step = 1;
                                format = "{icon} {volume}%";
                                format-muted = "󰖁 Muted";
                                format-icons = {
                                    default = [ "" "" "" ];
                                };
                                on-click = "pamixer -t";
                                tooltip = false;
                            };    
                            "network" = {
                                format = " ";
                                format-ethernet = "  {ifname}";
                                format-disconnected = "睊 Disconnected";
                                tooltip-format = "📡 {ifname}\n🔌 SSID: {essid}\n📶 Strength: {signalStrength}%\n⬆️ Up: {bandwidthUpBits} \n⬇️ Down: {bandwidthDownBits}";
                                interval = 5;
                                on-click = "nm-connection-editor";
                            };
                            "custom/powermenu" = {
                                format = "";
                                on-click = "";
                            };
                        };
                    };
                    style = ''
                        #waybar {
                            font-family: "JetBrainsMono Nerd Font";
                            font-size: 12pt;
                            font-weight: bold;
                            border: 2px solid #dedede;
                            border-radius: 9px; /* agar border terlihat penuh di semua sisi */
                            background-color: rgba(0, 0, 0, 0.3); /* semi-transparent */
                        }

                        #custom-appLauncher {
                            font-size: 20px;
                            padding-left: 8px;
                            padding-right: 6px;
                            color: #7ebae4;
                        }

                        #clock, #mpd, #pulseaudio, #network {
                            padding-left: 10px;
                            padding-right: 10px;
                            color: #dedede;
                        }

                        #custom-powermenu {
                            padding-left: 10px;
                            padding-right: 14px;
                            color: #dedede;
                        }

                        #workspaces {
                            padding: 0px;
                            font-family: "JetBrainsMono Nerd Font";
                            font-size: 12pt;
                            font-weight: bold;
                        }

                        #workspaces button.active {
                            background-color: #dedede;
                            color: #ffffff;
                            border-radius: 9px;
                        }
                    '';
                };
            };
        };
    };
}
