{ pkgs, ... }:

# example GET FORMAT
# fastfetch -h cpu-format

let
    name = "eep";
    #color
    # red
    # green
    # yellow
    # blue
    # magenta
    # cyan
    # white
in {
    home-manager = {
        users.${name} = {
            programs = {
                fastfetch = {
                    enable   = true;
                    package  = pkgs.fastfetch;
                    settings = {
                        logo = {
                            # uncomment this sh*t bellow if you want to use image
                            # type = "kitty-direct"; 
                            # height = 30;
                            # width = 50;

                            source = "/etc/nixos/asset/ascii/onepiece/01.txt";
                            padding = {
                                right = 6; # distance between logo and module
                            };
                        };

                        display = {
                            separator = " ¤ ";
                            color = "yellow";
                        };

                        modules = [
                            {
                                type = "title";
                                format = "イープ＠ニクソス";
                            }

                            {
                                type = "custom";
                                format = "╔═════════════════════════════════════════════════╗";
                            }
                            "break"

                            {
                                type = "os";
                                key = "Distro";
                                keyColor = "yellow";
                                format = "{2} {12}";
                            }{
                                type = "os";
                                key = "╰────────version";
                                keyColor = "red";
                                format = "{8} ({10})";
                            }


                            {
                                type = "kernel";
                                format = "{1}";
                            }{
                                type = "kernel";
                                key = "╰────────version";
                                keyColor = "red";
                                format = "{2}";
                            }


                            {
                                type = "shell";
                                format = "{6}";
                            }{
                                type = "shell";
                                key = "╰────────version";
                                keyColor = "red";
                                format = "{4}";
                            }


                            {
                                type = "de";
                                format = "{2}";
                            }{
                                type = "de";
                                key = "╰────────version";
                                keyColor = "red";
                                format = "{3}";
                            }


                            {
                                type = "wm";
                                format = "{2}";
                            }{
                                type = "wm";
                                key = "╰────────compositor";
                                keyColor = "red";
                                format = "{3}";
                            }                        


                            {
                                type = "terminal";
                                format = "{5}";
                            }{
                                type = "terminal";
                                key = "╰────────version";
                                keyColor = "red";
                                format = "{6}";
                            }


                            {
                                type = "cpu";
                                format = "{1}";
                            }{
                                type = "cpu";
                                key = "╰────────max-frequency";
                                keyColor = "red";
                                format = "{7} GHz";
                            }


                            {
                                type = "gpu";
                                format = "{2}";
                            }{
                                type = "gpu";
                                key = "╰────────vendor";
                                keyColor = "red";
                                format = "{1}";
                            }

                        
                            {
                                type = "memory";
                                format = "{2}";
                            }{
                                type = "memory";
                                key = "╰────────used";
                                keyColor = "red";
                                format = "{1} ({3})";
                            }


                            {
                                type = "disk";
                                format = "{2}";
                            }{
                                type = "disk";
                                key = "╰────────used";
                                keyColor = "red";
                                format = "{1} ({3})";
                            }{
                                type = "disk";
                                key = "╰────────filesystem";
                                keyColor = "red";
                                format = "{9}";
                            }

                            {
                                type = "packages";
                            }
                        
                            "break"

                            {
                                type = "custom";
                                format= "╚═════════════════════════════════════════════════╝";
                            }

                            {
                                type = "colors";
                                paddingLeft = 6;
                                symbol= "circle";
                            }
                        ];
                    };
                };
            };
        };
    };
}
