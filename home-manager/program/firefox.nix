{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                firefox = {
                    enable = false;
                    package = pkgs.firefox;
                    policies = {
                        BlockAboutConfig = true;
                        DefaultDownloadDirectory = "\${home}/Downloads";
                    };
                    # profiles = {
                    #     eep = {
                    #         containers = {
                    #             dua = {
                    #                 color = "red";
                    #                 icon = "fruit";
                    #                 id = 2;
                    #                 name = "dua";
                    #             };
                    #             satu = {
                    #                 color = "blue";
                    #                 icon = "dollar";
                    #                 id = 1;
                    #                 name = "satu";
                    #             };
                    #         };
                    #     };
                    # };
                };
            };
        };
    };
}
