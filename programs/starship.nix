{ ... }: let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        starship = {
          enable = true;
          enableBashIntegration = true;
        };
      };
    };
  };
}
