{ lib, ... }:
{
  networking.useDHCP = lib.mkDefault true;
}