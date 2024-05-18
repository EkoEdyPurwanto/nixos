{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                alacritty = {
                    enable = false;
                };
            };
        };
    };
}
