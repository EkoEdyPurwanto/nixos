{ pkgs, ... }:

let
  name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                bat = {
                    enable = true;
                    config = {
                        theme = "ansi"; 
                    };
                };
            };
        };
    };
}

