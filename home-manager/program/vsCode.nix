{ pkgs, ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                vscode = {
                    enable = true;
                    enableUpdateCheck = false;
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
                        golang.go                       # Go
                        bbenoist.nix                    # Nix
                        esbenp.prettier-vscode          # Prettier - Code formatter
                        oderwat.indent-rainbow          # indent-rainbow
                        tamasfe.even-better-toml        # Even Better TOML
                        naumovs.color-highlight         # Color Highlight
                        vscode-icons-team.vscode-icons  # vscode-icons
                        ms-azuretools.vscode-docker     # Docker
                        ms-vscode.makefile-tools        # Makefile Tools
                        humao.rest-client               # REST Client
                        seatonjiang.gitmoji-vscode      # Gitmoji
                        dotenv.dotenv-vscode            # Dotenv Official +Vault
                        bierner.emojisense              # :emojisense:
                        rust-lang.rust-analyzer         # rust-analyzer
                        jdinhlife.gruvbox               # Gruvbox Theme

                        # Thunder Client
                        # Golang Tools
                        # Go Nightly
                        # Brogrammer Theme
                        # Better Comments
                        # 👉 Emoji File Icons 👈
                        # Vue - Official
                        # open in browser
                        # Live Preview
                    ];
                };
            };
        };
    };
}