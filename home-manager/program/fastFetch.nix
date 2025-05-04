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
                            type = "kitty-direct"; 
                            height = 13;
                            width = 25;

                            source = "/etc/nixos/asset/logo/random/dogecoin-logo.png";
                            padding = {
                                right = 6; # distance between logo and module
                                left = 6;
                                top = 2;
                            };
                        };

                        display = {
                            separator = " ¤ ";
                            color = "yellow";
                        };

                        modules = [
                            {
                                type = "title";
                                format = "                    イープ＠ニクソス";
                            }

                            {
                                type = "custom";
                                format = "╔ ══════════ ══════════ ══════════ ══════════ ══════════ ╗";
                            }
                            "break"

                            {
                                type = "os";
                                key = "         Distro  ";
                                keyColor = "yellow";
                                format = "{2} {12}";
                            }{
                                type = "os";
                                key = "         ╰────────version";
                                keyColor = "red";
                                format = "{8} ({10})";
                            }


                            {
                                type = "kernel";
                                key = "         Kernel  ";
                                keyColor = "yellow";
                                format = "{1}";
                            }{
                                type = "kernel";
                                key = "         ╰────────version";
                                keyColor = "red";
                                format = "{2}";
                            }


                            {
                                type = "shell";
                                key = "         Shell   ";
                                keyColor = "yellow";
                                format = "{6}";
                            }{
                                type = "shell";
                                key = "         ╰────────version";
                                keyColor = "red";
                                format = "{4}";
                            }


                            {
                                type = "de";
                                key = "         DE      ";
                                keyColor = "yellow";
                                format = "{2}";
                            }{
                                type = "de";
                                key = "         ╰────────version";
                                keyColor = "red";
                                format = "{3}";
                            }


                            {
                                type = "wm";
                                key = "         WM      ";
                                keyColor = "yellow";
                                format = "{2}";
                            }{
                                type = "wm";
                                key = "         ╰────────compositor";
                                keyColor = "red";
                                format = "{3}";
                            }                        


                            {
                                type = "terminal";
                                key = "         Terminal";
                                keyColor = "yellow";
                                format = "{5}";
                            }{
                                type = "terminal";
                                key = "         ╰────────version";
                                keyColor = "red";
                                format = "{6}";
                            }


                            # {
                            #     type = "cpu";
                            #     format = "{1}";
                            # }{
                            #     type = "cpu";
                            #     key = "╰────────max-frequency";
                            #     keyColor = "red";
                            #     format = "{7} GHz";
                            # }


                            # {
                            #     type = "gpu";
                            #     format = "{2}";
                            # }{
                            #     type = "gpu";
                            #     key = "╰────────vendor";
                            #     keyColor = "red";
                            #     format = "{1}";
                            # }

                        
                            # {
                            #     type = "memory";
                            #     format = "{2}";
                            # }{
                            #     type = "memory";
                            #     key = "╰────────used";
                            #     keyColor = "red";
                            #     format = "{1} ({3})";
                            # }


                            # {
                            #     type = "disk";
                            #     format = "{2}";
                            # }{
                            #     type = "disk";
                            #     key = "╰────────used";
                            #     keyColor = "red";
                            #     format = "{1} ({3})";
                            # }{
                            #     type = "disk";
                            #     key = "╰────────filesystem";
                            #     keyColor = "red";
                            #     format = "{9}";
                            # }

                            {
                                type = "packages";
                                key = "         Packages";
                                keyColor = "yellow";
                            }
                        
                            "break"

                            {
                                type = "custom";
                                format= "╚ ══════════ ══════════ ══════════ ══════════ ══════════ ╝";
                            }

                            {
                                type = "colors";
                                paddingLeft = 24;
                                symbol= "circle";
                            }
                        ];
                    };
                };
            };
        };
    };
}
