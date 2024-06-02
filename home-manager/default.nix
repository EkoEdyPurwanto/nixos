{ ... }:

let
    name = "eep";
    ver = "23.11";
in {
    imports = [
        <home-manager/nixos>
        ./program
        ./font
        ./package
        ./theme
        ./dconf
    ];

    home-manager = {
        useGlobalPkgs = true;
        users.${name} = {
            home = {
                username = "${name}";
                homeDirectory = "/home/${name}";
                stateVersion = "${ver}";
                sessionVariables = {
                    # implement here !!!
                    GTK_THEME = "WhiteSur-Dark";
                };
                file = {
                    # implement here !!!
                };
            };
        };
    };
}
