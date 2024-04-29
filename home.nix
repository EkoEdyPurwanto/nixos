{ ... }: 
let
  name = "eep";
  ver = "23.11";
in {
  
  imports = [
    <home-manager/nixos>
    ./programs
    ./fonts
    ./packages
  ];

  #users.users.${name}.isNormalUser = true;
  home-manager = {
    useGlobalPkgs = true;
    users.${name} = {
      home = {
        username = "${name}";
        homeDirectory = "/home/${name}";
        stateVersion = "${ver}";
        sessionVariables = {
          # implement here !!!
        };
        file = {
          # implement here !!!
        };
      };
    };
  };
}
