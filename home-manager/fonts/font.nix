{ pkgs, ... }:

let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      home = {
        packages = [
          (pkgs.nerdfonts.override { fonts = [
          "FiraCode"
          "Iosevka"
          "JetBrainsMono"
          ];
          })
        ];
      };
    };
  };
}
