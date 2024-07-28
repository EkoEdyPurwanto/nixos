{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                fzf = {
                    enable                = true;
                    enableBashIntegration = true;
                };
            };
        };
    };
}
