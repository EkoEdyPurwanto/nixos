{ ... }:
{
      # Enable the X11 windowing system.
      services.xserver.enable = true;

      # Enable the GNOME Desktop Environment.
      services.xserver.displayManager.gdm.enable = true;
      services.xserver.desktopManager.gnome.enable = true;

      # Configure keymap in X11
      services.xserver = {
        layout = "us";
        xkbVariant = "";
      };
}