{ pkgs, ... }:

{
    services = {
        sxhkd = {
            enable = false;
            package = "pkgs.sxhkd";
        };
    };
}