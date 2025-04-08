{ pkgs, ... }:

let
    name = "eep";
in {   
    home-manager = {
        users.${name} = {
            programs = {
                yazi = {
                    enable                = true;
                    package               = pkgs.yazi;
                    enableBashIntegration = true;
                    settings = {
                        manager = {
                            show_hidden = true;
                        };
                    };
                    theme = {
                        filetype = {
                            rules = [
                                { fg = "#7AD9E5"; mime = "image/*"; }
                                { fg = "#F3D398"; mime = "video/*"; }
                                { fg = "#F3D398"; mime = "audio/*"; }
                                { fg = "#CD9EFC"; mime = "application/bzip"; }
                            ];
                        };
                    };
                };
            };
        };
    };
}