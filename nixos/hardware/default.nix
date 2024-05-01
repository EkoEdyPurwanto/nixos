{ modulesPath, ... }:
{
    imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./fileSystem
    ./networking.nix
    ./platform.nix
    ./processor.nix
    ./swapDevice.nix
    ];
}