{ pkgs, ... }:

{
   users.users.eep = {
      isNormalUser = true;
      description = "eep";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
   };
}