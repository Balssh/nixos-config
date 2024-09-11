{pkgs, ...}: {
  boot = {
    loader = {
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        configurationLimit = 10;
        efiSupport = true;
      };
    };
    kernelPackages = pkgs.linuxPackages_latest;
  };
}
