{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## CLI utility
    ani-cli
    cliphist # clipboard manager
    ffmpeg
    file # Show file information
    imv # image viewer
    libnotify
    mpv # video player
    nitch # systhem fetch util
    pamixer
    playerctl # controller for media players
    poweralertd
    qview # minimal image viewer
    tdf # cli pdf viewer
    wl-clipboard # clipboard utils for wayland (wl-copy, wl-paste)
    xdg-utils

    ## CLI
    cbonsai # terminal screensaver

    ## GUI Apps
    pavucontrol # pulseaudio volume controle (GUI)
    winetricks
    wineWowPackages.wayland
    zenity
  ];
}
