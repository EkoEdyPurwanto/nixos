{ pkgs, ... }:

{
    # rabbitmq
    services.rabbitmq = {
        enable = true;
        package = pkgs.rabbitmq-server;
        dataDir = "/var/lib/rabbitmq";
        port = 5672;
        listenAddress = "0.0.0.0";
        # unsafeCookie = "";
        plugins = [ 
            "rabbitmq_management"
            "rabbitmq_mqtt"
        ];

        managementPlugin = {
            enable = true;
            port = 15672;
        };
    };

    #
    services.onlyoffice.rabbitmqUrl = "amqp://eep:1903@localhost:5672";

    # erlang
    services.epmd = {
        enable = true;
        package = pkgs.erlang;
    };
}