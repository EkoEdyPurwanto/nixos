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
                    extensions = with pkgs; [
                        vscode-extensions.golang.go
                        vscode-extensions.bbenoist.nix
                        vscode-extensions.esbenp.prettier-vscode
                        vscode-extensions.oderwat.indent-rainbow
                        vscode-extensions.tamasfe.even-better-toml
                        vscode-extensions.naumovs.color-highlight
                    ];
                };
            };
        };
    };
}