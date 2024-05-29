{ ... }:

let
    name = "eep";
in {
    security = {
        sudo = {
            enable = false;
            wheelNeedsPassword = true;
        };
        doas = {
            enable = true;
            wheelNeedsPassword = true;
            extraRules = [
                {
                    users = ["${name}"];
                    groups = ["wheel"];
                    keepEnv = true;
                    noPass = false;
                }
            ];
        };
    };
}    