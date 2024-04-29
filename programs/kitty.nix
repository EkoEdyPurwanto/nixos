{ ... }: let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        kitty = {
          enable = true;
          font = {
            name = "JetBrainsMono Nerd Font";
            size = 14;
          };
          settings = {
            scrollback_lines = 10000;
            enable_audio_bell = true;
            update_check_interval = 0;
            background_opacity = "0.80";
            cursor = "#30d602";
            background_blur = "1";
            foreground = "#807d7d";
            background = "#000000";
            placement_strategy = "center";
            remember_window_size = "yes";
          };
          shellIntegration.enableBashIntegration = true;
          #theme = "Dracula";
        };
      };
    };
  };
}
