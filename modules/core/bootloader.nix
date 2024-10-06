{
  inputs,
  pkgs,
  ...
}: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      # grub = {
      #   enable = true;
      #   device = "nodev";
      #   configurationLimit = 10;
      #   efiSupport = true;
      #   theme = inputs.nixos-grub-themes.packages.${pkgs.system}.nixos;
      # };
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
