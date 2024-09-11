{
  inputs,
  pkgs,
  ...
}: let
  _2048 = pkgs.callPackage ../../pkgs/2048/default.nix {};
in {
  home.packages = with pkgs; [
    _2048

    ## CLI utility
    ani-cli
    cliphist # clipboard manager
    eza # ls replacement
    fd # find replacement
    ffmpeg
    file # Show file information
    imv # image viewer
    killall
    lazygit
    libnotify
    man-pages # extra man pages
    mpv # video player
    gdu # disk space
    nitch # systhem fetch util
    openssl
    onefetch # fetch utility for git repo
    pamixer
    playerctl # controller for media players
    poweralertd
    qview # minimal image viewer
    ripgrep # grep replacement
    tdf # cli pdf viewer
    unzip
    wl-clipboard # clipboard utils for wayland (wl-copy, wl-paste)
    wget
    yazi # terminal file manager
    xdg-utils
    xxd

    ## CLI
    cbonsai # terminal screensaver
    bottom

    ## GUI Apps
    pavucontrol # pulseaudio volume controle (GUI)
    winetricks
    wineWowPackages.wayland
    zenity

    # C / C++
    gcc
    gnumake

    # Python
    python3

    # Go
    go
    gotools
    gopls

    #node
    nodejs

    inputs.alejandra.defaultPackage.${system}
  ];
}
