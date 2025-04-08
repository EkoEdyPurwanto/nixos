{ config, pkgs, ... }:

{
    boot = {
        
        plymouth = {
            enable = true;
            theme = "optimus";
            themePackages = with pkgs; [
                # By default we would install all themes
                (adi1090x-plymouth-themes.override {
                    selected_themes = [ "optimus" ];
                })
            ];
        };

        initrd = {
            availableKernelModules = [
                "xhci_pci"
                "ahci"
                "usb_storage"
                "sd_mod"
                "rtsx_pci_sdmmc"
            ];
            kernelModules = [ ];
            luks.devices. "luks-1e864ff3-d19e-491b-a401-78f9962dae85".device = "/dev/disk/by-uuid/1e864ff3-d19e-491b-a401-78f9962dae85";
        };
            kernelModules = [
                "kvm-intel"
            ];
            extraModulePackages = [ ];
            kernelPackages = pkgs.linuxPackages_latest;
    };
}