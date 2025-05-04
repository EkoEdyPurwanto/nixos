{ pkgs, ... }:

{
    services.displayManager.ly.enable = true;
    services.displayManager.ly.package = pkgs.ly;

    programs.hyprland.enable = true; # enable Hyprland
    programs.hyprland.portalPackage = pkgs.xdg-desktop-portal-hyprland;
    # environment.variables = {
    #     WLR_NO_HARDWARE_CURSORS = "1"; # Jika mengalami masalah kursor
    #     XKB_DEFAULT_LAYOUT = "us";  # Ganti dengan layout yang diinginkan
    #     XKB_DEFAULT_VARIANT = "";   # Jika ada varian khusus, isi di sini
    #     XDG_SESSION_TYPE = "wayland";  # Pastikan sesi menggunakan Wayland
    #     XDG_CURRENT_DESKTOP = "Hyprland";
    #     XDG_SESSION_DESKTOP = "Hyprland";
    #     HYPRSHOT_DIR = "/home/eep/Pictures/Screenshots";
    # };
}
