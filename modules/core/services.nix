{...}: {
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    fstrim.enable = true;
    flatpak.enable = true;
    kanata = {
      enable = true;
      keyboards = {
        all.config = ''
          ;; Caps to escape/control configuration for Kanata

          (defsrc
            caps
          )

          (defalias
            escctrl (tap-hold 100 100 esc lctl)
          )

          (deflayer base
            @escctrl
          )
        '';
      };
    };
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';
}
