{ modulesPath, ... }:

{
    imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ./boot.nix
    ./fileSystem.nix
    ./networking.nix
    ./platform.nix
    ./processor.nix
    ./swapDevice.nix
    ];
}