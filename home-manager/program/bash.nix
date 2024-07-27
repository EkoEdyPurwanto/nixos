{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                bash = {
                    enable = true;
                    enableCompletion = true;
                    shellAliases = {
                        ### EZA ###
                        ls = "eza";
                        la = "eza -a";
                        ll = "eza -l";
                        lla = "eza -la";
                        lt = "eza --tree";
                        ### TRASHY ###
                        rm = "trash put";
                        tlis = "trashy list";
                        tres = "trashy restore";
                        ### BAT ###
                        cat = "bat";
                    };
                    bashrcExtra = "complete -cf doas";
                    initExtra = "fastfetch";
                };
            };
        };
    };
}
