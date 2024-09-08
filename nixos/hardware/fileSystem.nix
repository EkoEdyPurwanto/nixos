{ ... }:

{
    fileSystems."/" = {
        device = "/dev/disk/by-uuid/f49fba0e-7fe7-48e8-b413-0e2e3e229547";
        fsType = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/ABEC-C57F";
        fsType = "vfat";
        options = [ 
            "fmask=0077"
            "dmask=0077" 
        ];
    };
}
