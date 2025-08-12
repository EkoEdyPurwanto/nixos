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
                            modules-right = [ "custom/crypto" "mpd" "pulseaudio" "network" "custom/powermenu" ];
                            "custom/crypto" = {
                                exec = ''
                                    set -e
                                    export LC_NUMERIC=id_ID.UTF-8
                                    KEYS="CG-JZagcEte8ffDjmbx3nDNNBZU CG-Bv5jtdXouMcPz3DbZ2huPmcJ CG-EdBhbuqmjU9c3WuCYXpsofbr"
                                    for key in $KEYS; do
                                        response=$(curl -s -H "x-cg-api-key: $key" "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,tether-gold,monero&vs_currencies=usd")
                                        if echo "$response" | grep -q '"error"\|"status_code"'; then
                                            continue
                                        else
                                            btc=$(printf "%'d" $(echo "$response" | jq -r '.bitcoin.usd' | cut -d'.' -f1))
                                            tether_gold=$(printf "%'d" $(echo "$response" | jq -r '.["tether-gold"].usd' | cut -d'.' -f1))
                                            xmr=$(printf "%'d" $(echo "$response" | jq -r '.monero.usd' | cut -d'.' -f1))
                                            echo "<span color=\"#FFFF00\">BTC $btc</span>  <span color=\"#dedede\">|</span>  <span color=\"#FFD700\">XAUT $tether_gold</span>  <span color=\"#dedede\">|</span>  <span color=\"#FFA500\">XMR $xmr</span>"
                                            break
                                        fi
                                    done
                                '';
                                interval = 15;
                                format = "{}";
                                markup = "pango";
                                tooltip = false;
                            };
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

                        #custom-crypto {
                            padding-left: 5px;
                            padding-right: 5px;
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
                            margin: 0px;
                            font-family: "JetBrainsMono Nerd Font";
                            font-size: 12pt;
                            font-weight: bold;
                        }

                        #workspaces button {
                            background: transparent;
                            color: #dedede;
                            border: none;
                            margin: 0 4px;
                            padding: 4px;
                            min-width: 10px;
                            min-height: 10px;
                            border-radius: 50%;
                            transition: all 0.2s ease;
                        }

                        #workspaces button.active {
                            background-color: #dedede;
                            color: #1e1e2e;
                            border-radius: 20px; /* aktif jadi lonjong */
                            padding: 4px 10px;
                        }

                        #workspaces button:hover {
                            background-color: rgba(255, 255, 255, 0.2);
                            border-radius: 50%;
                        }
                    '';
                };
            };
        };
    };
}
