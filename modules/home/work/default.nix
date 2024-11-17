{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ../common
    ./git.nix
    ./packages.nix
  ];
  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
}
