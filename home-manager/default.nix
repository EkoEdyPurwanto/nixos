{ ... }:

let
    name = "eep";
    ver = "24.05";
in {
    imports = [
        <home-manager/nixos>
        ./program
        ./font
        ./package
    ];

    home-manager = {
        useGlobalPkgs = true;
        users.${name} = {
            home = {
                username = "${name}";
                homeDirectory = "/home/${name}";
                stateVersion = "${ver}";
            };
        };
    };
}
