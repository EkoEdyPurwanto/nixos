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
                        "files.associations" = {
                            ".env*" = "dotenv";
                        };

                        "editor.tokenColorCustomizations" = {
                            "textMateRules" = [
                                {
                                    "scope" = "keyword.other.dotenv";
                                    "settings" = {
                                        "foreground" = "#FF000000";
                                    };
                                }
                            ];    
                        };
                        "editor.fontLigatures" = true;
                        "editor.fontVariations" = false;
                        "editor.fontWeight" = 625;
                        "editor.fontFamily" = "Iosevka Nerd Font";
                        "editor.fontSize" = 16;

                        "workbench.iconTheme" = "vscode-icons";
                        "workbench.colorTheme" = "Brogrammer";
                        "workbench.productIconTheme" = "emoji-product-icons";
                        "workbench.tree.expandMode" = "doubleClick";
                        "workbench.colorCustomizations" = {
                        "[Brogrammer]" = {
                            "activityBarBadge.background" = "#ff0000";
                            "editor.selectionBackground" = "#ffffff60";
                            "editor.selectionHighlightBackground" = "#ffffff60";
                            };
                        };
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