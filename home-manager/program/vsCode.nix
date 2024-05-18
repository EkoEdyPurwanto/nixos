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
                    userSettings = {
                        "files.autoSave" = "afterDelay";
                        "workbench.iconTheme" = "vscode-icons";
                        "workbench.colorTheme" = "Default High Contrast";
                        "workbench.productIconTheme" = "emoji-product-icons";
                        "workbench.tree.expandMode" = "doubleClick";
                        "editor.fontLigatures" = true;
                        "editor.fontVariations" = false;
                        "editor.fontWeight" = 625;
                        "editor.fontFamily" = "Iosevka Nerd Font";
                        "editor.fontSize" = 16;
                    };
                    extensions = with pkgs.vscode-extensions; [
                        golang.go
                        bbenoist.nix
                        esbenp.prettier-vscode
                        oderwat.indent-rainbow
                        tamasfe.even-better-toml
                        naumovs.color-highlight
                        vscode-icons-team.vscode-icons
                        ms-azuretools.vscode-docker
                        ms-vscode.makefile-tools
                        humao.rest-client
                        seatonjiang.gitmoji-vscode
                        dotenv.dotenv-vscode
                        bierner.emojisense
                    ];
                };
            };
        };
    };
}