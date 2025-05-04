{ ... }:

{
    imports = [
        ./postgreSQL.nix
        ./printing.nix
        ./wm-and-dm.nix
        ./pipewire.nix
        ./nginx.nix
        ./mySql.nix
        # ./rabbitMq.nix
        # ./jenkins.nix
        # ./kubernetes.nix
        # ./prometheus.nix
        # ./grafana.nix
    ];
}