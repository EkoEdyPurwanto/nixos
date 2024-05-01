{ pkgs, ... }:

{
      # Define a user account. Don't forget to set a password with ‘passwd’.
      users.users.eep = {
        isNormalUser = true;
        description = "eep";
        extraGroups = [ "networkmanager" "wheel" ];
      };
}