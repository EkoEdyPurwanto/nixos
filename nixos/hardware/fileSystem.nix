{ ... }:

{
    fileSystems."/" = {
        device = "/dev/disk/by-uuid/ed9456c3-4990-41fb-b2aa-4cf5f8cab0d2";
        fsType = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/5553-D594";
        fsType = "vfat";
        options = [
        "fmask=0022"
        "dmask=0022"
        ];
    };
}