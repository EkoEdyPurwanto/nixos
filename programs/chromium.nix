{ ... }: 
let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        chromium = {
          enable = true;
        };
      };
    };
  };
}
