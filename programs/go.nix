{ ... }: 
let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        go = {
          enable = true;
        };
      };
    };
  };
}
