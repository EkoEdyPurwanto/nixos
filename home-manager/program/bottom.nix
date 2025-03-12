{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                bottom = {
                    enable = true;
                    settings = {
                        styles = {
                            theme = "gruvbox";
                        };
                        flags = {
                            avg_cpu          = true;
                            temperature_type = "c";
                        };
                        colors = {
                            low_battery_color = "red";
                        };
                    };
                };
            };
        };
    };
}

# RESOURCE: https://github.com/ClementTsang/bottom