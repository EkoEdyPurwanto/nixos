{ config, pkgs, ... }:

{
    boot = {
        initrd = {
            availableKernelModules = [
                "xhci_pci"
                "ahci"
                "usb_storage"
                "sd_mod"
                "rtsx_pci_sdmmc"
            ];
            kernelModules = [ ];
            luks.devices."luks-8c05a8bd-c9eb-49d9-84f2-d1ce6c722f08".device = "/dev/disk/by-uuid/8c05a8bd-c9eb-49d9-84f2-d1ce6c722f08";
        };
            kernelModules = [
                "kvm-intel"
            ];
            extraModulePackages = [ ];
            kernelPackages = pkgs.linuxPackages_latest;
    };
}