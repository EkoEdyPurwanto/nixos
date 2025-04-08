{ ... }:

{
    imports = [
        ./postgreSQL.nix
        ./printing.nix
        ./sddm.nix
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