{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./disko-config.nix
  ];
}
