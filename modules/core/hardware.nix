{
  pkgs,
  config,
  libs,
  ...
}: {
  services.xserver.videoDrivers = ["nvidia"];
  services.blueman.enable = true;
  hardware = {
    graphics = {
      enable = true;
    };

    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      open = false;
      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };
  hardware.enableRedistributableFirmware = true;
}
