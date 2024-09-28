{
  inputs,
  username,
  host,
  ...
}: {
  imports = [
    ../common
    ./git.nix
  ];
  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };
  programs.home-manager.enable = true;
}
