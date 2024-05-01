{ config, pkgs, ... }:

{
      # Allow unfree packages
      nixpkgs.config.allowUnfree = true;
}