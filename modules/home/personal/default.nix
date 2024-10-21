{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ../common
    ./cava.nix # audio visualizer
    ./firefox.nix # firefox
    ./git.nix # version control
    ./gnome.nix # gnome apps
    ./gtk.nix # gtk theme
    ./hyprland # window manager
    ./kitty.nix # terminal
    ./swaync/swaync.nix # notification deamon
    ./packages.nix # other packages
    ./rofi.nix # launcher
    ./scripts/scripts.nix # personal scripts
    ./waybar # status bar
    ./xdg-mimes.nix # xdg config
  ];
}
