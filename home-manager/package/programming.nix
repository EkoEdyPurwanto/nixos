{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            home = {
                packages = with pkgs; [
                    ## PROGRAMMING LANG ##
                    # for java
                    jdk17
        
                    # JS ecosystem
                    nodejs_22
                    #fnm # fast and simple Node.js version manager
                    typescript

                    # for rust
                    rustup
                    gcc
                ];
            };
        };
    };
}
