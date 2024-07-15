{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                git.lfs = {
                    enable = true;
                };
            };
        };
    };
}
