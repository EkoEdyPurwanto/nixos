{ ... }:

{
    imports = [
        ./postgreSQL.nix
        ./printing.nix
        ./xserver.nix
        ./pipewire.nix
        ./rabbitMq.nix
        # ./jenkins.nix
        # ./kubernetes.nix
        # ./prometheus.nix
        # ./grafana.nix
    ];
}