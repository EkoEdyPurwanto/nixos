{ pkgs, ... }:

let
    statsConfig = {
        db = "eep";
        user = "eep";
        password = "1903";
    };

in {
    services.mysql = {
        enable = true;
        package = pkgs.mariadb;
        replication.role = "master";
        replication.slaveHost = "127.0.0.1";
        replication.masterUser = "${statsConfig.user}";
        replication.masterPassword = "${statsConfig.password}";
        initialScript = pkgs.writeText "setup-sql" ''
            CREATE DATABASE IF NOT EXISTS `${statsConfig.db}`;
            CREATE USER IF NOT EXISTS '${statsConfig.user}'@'%' IDENTIFIED WITH mysql_native_password;
            ALTER USER '${statsConfig.user}'@'%' IDENTIFIED BY '${statsConfig.password}';
            GRANT ALL PRIVILEGES ON * . * TO '${statsConfig.user}'@'%';
        '';
    };
}