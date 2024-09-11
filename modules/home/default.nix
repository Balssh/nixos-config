{
  inputs,
  username,
  host,
  ...
}: {
  imports = [
    ./bat.nix # better cat command
    ./cava.nix # audio visualizer
    ./fastfetch.nix # fetch tool
    ./fzf.nix # fuzzy finder
    ./firefox.nix # firefox
    ./gaming.nix # packages related to gaming
    ./git.nix # version control
    ./gnome.nix # gnome apps
    ./gtk.nix # gtk theme
    ./hyprland # window manager
    ./kitty.nix # terminal
    ./swaync/swaync.nix # notification deamon
    ./nvim.nix # neovim editor
    ./packages.nix # other packages
    ./rofi.nix # launcher
    ./scripts/scripts.nix # personal scripts
    ./starship.nix # shell prompt
    ./waybar # status bar
    ./xdg-mimes.nix # xdg config
    ./zsh.nix
  ]; # shell
}
