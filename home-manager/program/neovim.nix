{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                neovim = {
                    enable = true;
                    viAlias = true;
                    vimAlias = true;
                    vimdiffAlias = true;
                };
            };
        };
    };
}
