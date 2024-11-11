{
  pkgs,
  config,
  libs,
  ...
}:
{
  services = {
    xserver.videoDrivers = [ "nvidia" ];
    blueman.enable = true;
  };
  hardware = {
    graphics.enable = true;

    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      open = false;
      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
      settings = {
        General = {
          ControllerMode = "dual";
        };
      };
    };
  };
  hardware.enableRedistributableFirmware = true;
}
