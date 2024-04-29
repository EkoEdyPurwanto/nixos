{ ... }: 
let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        bash = {
         enable = true;
  	 enableCompletion = true;
  	 shellAliases = {
  	 	### EZA ###
  	 	eza = "eza --icons"
  		ls = "eza";
  		la = "eza -a"
  		ll = "eza -l"
  		lla = "eza -la"
  		lt = "eza --tree"
  		### TRASH-CLI ###
  		rm = "trash-put";
  		tlis = "trash-list";
  		tres = "trash-restore";
  		#### BAT ###
  		cat = "bat";
  	 };	
  	};
      };
    };
  };
}
