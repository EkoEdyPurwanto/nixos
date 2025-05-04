{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                eza = {
                    enable       = true;
                    extraOptions = [ "--group-directories-first"  "--header" ];
                    git          = true;
                    icons        = "always";
                };
            };
        };
    };
}

# RESOURCE: https://github.com/eza-community/eza