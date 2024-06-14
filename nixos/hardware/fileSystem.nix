{ ... }:

{
    fileSystems."/" = {
        device = "/dev/disk/by-uuid/d6334ec0-fe06-4136-b8c1-e187f863fd95";
        fsType = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/E164-7B8D";
        fsType = "vfat";
        options = [
        "fmask=0022"
        "dmask=0022"
        ];
    };
}
