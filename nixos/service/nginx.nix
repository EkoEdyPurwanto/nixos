{ pkgs, ... }:

{
    services = {
        nginx = {
            enable = true;
            package = pkgs.nginxStable;
            statusPage = true;
        };
    };
}