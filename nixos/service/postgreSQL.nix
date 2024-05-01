{ pkgs, lib, ... }:

{
    services.postgresql = {
        enable = true;
        ensureDatabases = [ "mydatabase" ];
        enableTCPIP = true;
        port = 5432;
        authentication = pkgs.lib.mkOverride 10 ''
            #type database  DBuser  auth-method
            local all       all     trust

            #type database DBuser origin-address auth-method
            # ipv4
            #host  all      all     127.0.0.1/32   md5
            # ipv6
            #host all       all     ::1/128        md5
        '';
        initialScript = pkgs.writeText "backend-initScript" ''
            CREATE ROLE eep WITH LOGIN PASSWORD '1903' CREATEDB;
            CREATE DATABASE mydatabase;
            GRANT ALL PRIVILEGES ON DATABASE mydatabase TO eep;
        '';
    };
}