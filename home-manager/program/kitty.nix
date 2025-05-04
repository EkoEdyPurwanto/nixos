{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                kitty = {
                    enable = true;
                    settings = {
                        # FONT
                        font_family             = "JetBrainsMono Nerd Font";
                        bold_font               = "auto";
                        italic_font             = "auto";
                        bold_italic_font        = "auto";
                        # font_size               = "12.0";

                        # CURSOR
                        cursor                  = "#19cb00";
                        cursor_text_color       = "#FF0000";    # no effect
                        cursor_shape            = "underline";  # no effect
                        shell_integration       = "no-cursor";  # no effect

                        # SCROLLBACK
                        scrollback_lines        = 1000;

                        # MOUSE
                        url_color               = "#FF6500";
                        url_style               = "curly";  # straight = _____ , double = ‗‗‗‗‗‗ , curly = ‿⁀ ‿⁀ ‿⁀ ‿⁀ ‿⁀ , dotted = .............. , dashed = _ _ _ _ _ _ _ _
                        open_url_with           = "default";
                        detect_urls             = "yes";

                        # TERMINAL BELL
                        enable_audio_bell       = true;

                        # WINDOW LAYOUT
                        remember_window_size    = "yes";
                        initial_window_width    = 640;
                        initial_window_height   = 400;
                        window_logo_path        = "none";
                        window_logo_position    = "center";
                        hide_window_decorations = "no";
                        confirm_os_window_close = 1;    # ask for confirmation when closing the terminal
                        placement_strategy      = "center";
                        enabled_layouts         = "*";

                        # TAB BAR
                        # not use

                        # COLOR SCHEME
                        background_opacity      = "0.80";
                        background_blur         = "1";
                        foreground              = "#19cb00";
                        # background              = "#dedede";

                        # THE COLOR TABLE
                        # not use


                        # ADVANCED
                        update_check_interval   = 0;    # to periodically check if updates for “kitty” are available or not, set to zero to disable

                        # OS SPECIFIC TWEAKS
                        wayland_titlebar_color  = "#dedede";
                        linux_display_server    = "auto";   # Set it to x11 or wayland to force the choice

                        # KEYBOARD SHORTCUTS
                        # not use

                    };
                    shellIntegration.enableBashIntegration = true;
                };
            };
        };
    };
}
