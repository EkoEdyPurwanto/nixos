{ pkgs, ... }:

{
    # services.epmd.package = pkgs.erlang;
    services = {
        rabbitmq = {
            enable = true;
            package = pkgs.rabbitmq-server;
            dataDir = "/var/lib/rabbitmq";
            port = 5672;
            listenAddress = "0.0.0.0";
            # cookie = "";
            managementPlugin.enable = true;
            managementPlugin.port = 15672;
            plugins = [
                "rabbitmq_management"
            ];
            # pluginDirs = [
                #
            # ];
        };
        # onlyoffice = {
        #     rabbitmqUrl = "amqp://eep:1903@localhost:5672";
        # };
    };
}