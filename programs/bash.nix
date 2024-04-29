{ ... }: let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        bash = {
         enable = true;
  	enableCompletion = true;
  	shellAliases = {
  		ls = "eza";
  		cat = "bat";
  		rm = "trash-put";
  		tlis = "trash-list";
  		tres = "trash-restore";
  	 };	
  	};
      };
    };
  };
}
