{ pkgs, ... }:

let
  name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                vscode = {
                    enable = true;
                    enableUpdateCheck = true;
                    enableExtensionUpdateCheck = true;
                    package = pkgs.vscode;
                    extensions = [
#                    pkgs.vscode-extensions.bbenoist.nix
                    ];
               };
            };
        };
    };
}