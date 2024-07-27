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
                        rm = "trash put";               # putting something into the trash folder
                        tlis = "trash list";            # check the list in the trash folder
                        tres = "trash restore";         # restore something that was in the trash folder
                        tempty = "trashy empty --all";  # emptying the trash folder
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
