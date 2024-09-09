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
                    ### ###
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

                    ### ###
                    "org/gnome/desktop/wm/keybindings" = {
                        close = ["<Super>q"];
                        switch-to-workspace-1 = ["<Super>1"];
                        switch-to-workspace-2 = ["<Super>2"];
                        switch-to-workspace-3 = ["<Super>3"];
                        switch-to-workspace-4 = ["<Super>4"];
                        switch-to-workspace-5 = ["<Super>5"];
                        switch-to-workspace-6 = ["<Super>6"];
                        switch-to-workspace-7 = ["<Super>7"];
                        switch-to-workspace-8 = ["<Super>8"];
                        switch-to-workspace-9 = ["<Super>9"];
                        move-to-workspace-1 = ["<Shift><Super>1"];
                        move-to-workspace-2 = ["<Shift><Super>2"];
                        move-to-workspace-3 = ["<Shift><Super>3"];
                        move-to-workspace-4 = ["<Shift><Super>4"];
                        move-to-workspace-5 = ["<Shift><Super>5"];
                        move-to-workspace-6 = ["<Shift><Super>6"];
                        move-to-workspace-7 = ["<Shift><Super>7"];
                        move-to-workspace-8 = ["<Shift><Super>8"];
                        move-to-workspace-9 = ["<Shift><Super>9"];
                        move-to-monitor-down = "disabled";
                        move-to-monitor-left = "disabled";
                        move-to-monitor-right = "disabled";
                        move-to-monitor-up = "disabled";
                        move-to-workspace-down = "disabled";
                        move-to-workspace-up = "disabled";
                    };

                    ### ###
                    "org/gnome/desktop/wm/preferences" = {
                        button-layout = "close,minimize,maximize:appmenu";
                        num-workspaces = 10;
                    };
                };
            };
        };
    };
}

