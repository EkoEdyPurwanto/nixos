{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                git = {
                    enable = true;
                    userName = "EkoEdyPurwanto";
                    userEmail = "ekoedypurwantooke@gmail.com";
                };
            };
        };
    };
}
