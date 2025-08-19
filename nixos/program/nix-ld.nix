{ pkgs, lib, ... }:

{
    # nix-ld for handling dynamic lib
    programs.nix-ld = {
        enable = lib.mkDefault true;
        libraries = with pkgs; [
            glibc
        ];
    };
}