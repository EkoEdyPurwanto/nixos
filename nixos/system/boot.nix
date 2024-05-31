{ pkgs, ... }:

let 
    fallout = pkgs.fetchFromGitHub {
            owner = "shvchk";
            repo = "fallout-grub-theme";
            rev = "fcc680d166fa2a723365004df4b8736359d15a62";
            sha256 = "sha256-7kvLfD6Nz4cEMrmCA9yq4enyqVyqiTkVZV5y4RyUatU=";
        };
in {
    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    # boot.loader.grub.theme = "${fallout}";
}