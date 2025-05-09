{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    ### TUI ###
                    trashy          # if you do the command 'rm' or 'rm -rf' in the terminal it is automatically placed in the trash
                    wtf             # wtfutil for run
                    nix-health      # check the health of your nix setup
                    nix-search-cli  # cli for searching package
                    pipes           # pipes.sh for run
                    cmatrix         # matrix like hengker pro Tzy
                    cbonsai         # bonsai ASCII art
                    tty-clock       # to display the current time on terminal
                    # cointop       # cryptocurrency tracking like htop
                ];
            };
        };
    };
}
