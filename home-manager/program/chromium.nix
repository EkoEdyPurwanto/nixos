{ ... }:

let
    name = "eep";
in {
    home-manager = {
        users.${name} = {
            programs = {
                chromium = {
                    enable = true;
                    extensions = [
                        "bhchdcejhohfmigjafbampogmaanbfkg" # User-Agent Switcher and Manager
                        "hnmpcagpplmpfojmgmnngilcnanddlhb" # Windscribe - Free Proxy and Ad Blocker
                        "ohcpnigalekghcmgcdcenkpelffpdolg" # ColorPick Eyedropper
                        "egjidjbpglichdcondbcbdnbeeppgdph" # Trust Wallet
                    ];
                };
            };
        };
    };
}
