{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ## CLI utility
    ani-cli

    # TODO: remove the override once the PR fixing this is in
    # nixpkgs-unstable
    (cliphist.overrideAttrs (_old: {
      src = pkgs.fetchFromGitHub {
        owner = "sentriz";
        repo = "cliphist";
        rev = "c49dcd26168f704324d90d23b9381f39c30572bd";
        sha256 = "sha256-2mn55DeF8Yxq5jwQAjAcvZAwAg+pZ4BkEitP6S2N0HY=";
      };
      vendorHash = "sha256-M5n7/QWQ5POWE4hSCMa0+GOVhEDCOILYqkSYIGoy/l0=";
    }))
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
