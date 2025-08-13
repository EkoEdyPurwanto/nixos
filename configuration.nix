{ config, ... }:

{
    imports = [
        ./nixos
        ./home-manager
    ];

    # Activation script untuk membuat symlink ~/.config/hypr
    system.activationScripts.linkHyprlandConfig = {
        text = ''
            TARGET="/home/eep/.config/hypr"
            SOURCE="/etc/nixos/config/hypr"

            # Pastikan source ada
            if [ ! -d "$SOURCE" ]; then
                echo "❌ Folder source tidak ditemukan: $SOURCE"
                exit 1
            fi

            # Kalau target ada tapi bukan symlink, hapus
            if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
                echo "⚠️ Menghapus folder lama: $TARGET"
                rm -rf "$TARGET"
            fi

            # Buat symlink
            ln -sfn "$SOURCE" "$TARGET"

            echo "✅ Hyprland config di-link ke $TARGET"
        '';
    };
}
