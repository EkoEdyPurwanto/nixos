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
            luks.devices."luks-59e9d0de-e611-4b54-9480-9a2c3e341bda".device = "/dev/disk/by-uuid/59e9d0de-e611-4b54-9480-9a2c3e341bda";
        };
        kernelModules = [ "kvm-intel" ];
        extraModulePackages = [ ];
    };
}