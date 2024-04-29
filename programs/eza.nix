{ ... }: 
let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        eza = {
          enable = true;
          extraOptions = [ "--group-directories-first"  "--header" ];
          git = true;
          icons = true;
        };
      };
    };
  };
}
