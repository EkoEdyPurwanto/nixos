{ pkgs, lib, ... }:

{
    services.postgresql = {
        enable = true;
        ensureDatabases = [ "eep" ];
        enableTCPIP = true;
        port = 5432;
        authentication = pkgs.lib.mkOverride 10 ''
            #type database  DBuser  auth-method
            local all       all     trust

            # IPv4 local connections:
            host    all    eep    ::1/128    trust

            #type database DBuser origin-address auth-method
            # ipv4
            #host  all      all     127.0.0.1/32   md5
            # ipv6
            #host all       all     ::1/128        md5
        '';
        initialScript = pkgs.writeText "backend-initScript" ''
            CREATE ROLE eep WITH LOGIN PASSWORD '1903' CREATEDB SUPERUSER REPLICATION BYPASSRLS;
            CREATE DATABASE eep OWNER eep;
            GRANT ALL PRIVILEGES ON DATABASE eep TO eep;
        '';
    };
}