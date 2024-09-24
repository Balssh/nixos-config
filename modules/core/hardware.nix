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
      package = pkgs.bluez.overrideAttrs (finalAttrs: previousAttrs: rec {
        version = "5.78";

        src = pkgs.fetchurl {
          url = "mirror://kernel/linux/bluetooth/bluez-${version}.tar.xz";
          sha256 = "sha256-gw/tGRXF03W43g9eb0X83qDcxf9f+z0x227Q8A1zxeM=";
        };

        patches = [];

        buildInputs =
          previousAttrs.buildInputs
          ++ [
            pkgs.python3Packages.pygments
          ];
      });
    };
  };
  hardware.enableRedistributableFirmware = true;
}
