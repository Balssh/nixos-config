{
  inputs,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    ## CLI utility
    jq
    eza # ls replacement
    fd # find replacement
    ffmpeg
    file # Show file information
    killall
    man-pages # extra man pages
    gdu # disk space
    openssl
    onefetch # fetch utility for git repo
    ripgrep # grep replacement
    unzip
    wget
    yazi # terminal file manager
    xxd
    lazydocker
    dive

    git-lfs

    ## CLI
    bottom

    ## GUI Apps
    # Bash
    shfmt

    # Lua
    stylua

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

    nixfmt-rfc-style
  ];
}
