{ ... }:

let
  name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                tmux = {
                    enable = true;
                };
            };
        };
    };
}
