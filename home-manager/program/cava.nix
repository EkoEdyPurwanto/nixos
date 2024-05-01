{ ... }:

let
  name = "eep";

  # colors with quotation marks
  blue_1 = "'#99C1F1'";
  blue_2 = "'#62A0EA'";
  blue_3 = "'#3584E4'";
  blue_4 = "'#1C71D8'";
  blue_5 = "'#1A5FB4'";
  green_1 = "'#8FF0A4'";
  green_2 = "'#57E389'";
  green_3 = "'#33D17A'";
  green_4 = "'#2EC27E'";
  green_5 = "'#26A269'";
  yellow_1 = "'#F9F06B'";
  yellow_2 = "'#F8E45C'";
  yellow_3 = "'#F6D32D'";
  yellow_4 = "'#F5C211'";
  yellow_5 = "'#E5A50A'";
  orange_1 = "'#FFBE6F'";
  orange_2 = "'#FFA348'";
  orange_3 = "'#FF7800'";
  orange_4 = "'#E66100'";
  orange_5 = "'#C64600'";
  red_1 = "'#F66151'";
  red_2 = "'#ED333B'";
  red_3 = "'#E01B24'";
  red_4 = "'#C01C28'";
  red_5 = "'#A51D2D'";
  purple_1 = "'#DC8ADD'";
  purple_2 = "'#C061CB'";
  purple_3 = "'#9141AC'";
  purple_4 = "'#813D9C'";
  purple_5 = "'#613583'";
  brown_1 = "'#CDAB8F'";
  brown_2 = "'#B5835A'";
  brown_3 = "'#986A44'";
  brown_4 = "'#865E3C'";
  brown_5 = "'#63452C'";
  light_1 = "'#FFFFFF'";
  light_2 = "'#F6F5F4'";
  light_3 = "'#DEDDDA'";
  light_4 = "'#C0BFBC'";
  light_5 = "'#9A9996'";
  dark_1 = "'#77767B'";
  dark_2 = "'#5E5C64'";
  dark_3 = "'#3D3846'";
  dark_4 = "'#241F31'";
  dark_5 = "'#000000'";
  dark_6 = "'#242424'";
  dark_7 = "'#1E1E1E'";

in {
    home-manager = {
        users.${name} = {
            programs = {
                cava = {
                    enable = true;
                    settings = {
                        general = {
                            framerate = 60;
                            bars = 0;
                            bar_width = 2;
                            bar_spacing = 1;
                        };
                        smoothing = {
                            noise_reduction = 88;
                        };
                        color = {
                          gradient = 1;
                          gradient_count = 5;
                          gradient_color_1 = blue_3;
                          gradient_color_2 = green_3;
                          gradient_color_3 = purple_3;
                          gradient_color_4 = orange_3;
                          gradient_color_5 = yellow_3;
                        };
                    };
                };
            };
        };
    };
}
