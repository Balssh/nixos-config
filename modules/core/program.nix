{
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [inputs.aagl.nixosModules.default];
  nix.settings = inputs.aagl.nixConfig; # Set up Cachix
  programs = {
    honkers-railway-launcher.enable = true;

    dconf.enable = true;
    zsh.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      # pinentryFlavor = "";
    };
    nix-ld = {
      enable = true;
      libraries = with pkgs; [];
    };
  };
}
