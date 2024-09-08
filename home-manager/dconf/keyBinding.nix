let
    name = "eep";

    # Common path for custom keybindings
    basePath = "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings";

    # Function to generate a custom keybinding entry
    customKeybinding = key: cmd: name: {
        binding = key;
        command = cmd;
        name = name;
    };
in {
    home-manager = {
        users.${name} = {
            dconf = {
                settings = {
                    "org/gnome/settings-daemon/plugins/media-keys" = {
                        custom-keybindings = [
                            "/${basePath}/custom0/"
                            "/${basePath}/custom1/"
                            "/${basePath}/custom2/"
                            "/${basePath}/custom3/"
                            "/${basePath}/custom4/"
                            "/${basePath}/custom5/"
                            "/${basePath}/custom6/"
                            "/${basePath}/custom7/"
                        ];
                    };
                    "${basePath}/custom0" = customKeybinding "<Super>t" "kitty" "open-kitty-terminal";
                    "${basePath}/custom1" = customKeybinding "<Super><Shift>t" "alacritty" "open-allacrity-terminal";
                    "${basePath}/custom2" = customKeybinding "<Super>period" "code" "open-vsCode";
                    "${basePath}/custom3" = customKeybinding "<Super>g" "goland" "open-goland-ide";
                    "${basePath}/custom4" = customKeybinding "<Super>b" "chromium" "open-chromium-browser";
                    "${basePath}/custom5" = customKeybinding "<Super><shift>b" "tor-browser" "open-tor-browser";
                    "${basePath}/custom6" = customKeybinding "<Super>f" "nautilus" "open-files";
                    "${basePath}/custom7" = customKeybinding "<Super>x" "telegram-desktop" "open-telegram-desktop";
                };
            };
        };
    };
}

