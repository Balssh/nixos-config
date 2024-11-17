# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
  config,
  lib,
  pkgs,
  host,
  ...
}:

{

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = host; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true; # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Bucharest";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
    #useXkbConfig = true; # use xkb.options in tty.
  };

  # Fixes for longhorn
  # systemd.tmpfiles.rules = [
  #   "L+ /usr/local/bin - - - - /run/current-system/sw/bin/"
  # ];

  virtualisation.docker = {
    enable = true;
    logDriver = "json-file";
  };

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";
  # services.k3s = {
  #   enable = true;
  #   role = "server";
  #   tokenFile = /var/lib/rancher/k3s/server/token;
  #   extraFlags = toString (
  #     [
  #       "--write-kubeconfig-mode \"0644\""
  #       "--cluster-init"
  #       "--disable servicelb"
  #       "--disable traefik"
  #       "--disable local-storage"
  #     ]
  #     ++ (
  #       if meta.hostname == "homelab-0" then
  #         [ ]
  #       else
  #         [
  #           "--server https://homelab-0:6443"
  #         ]
  #     )
  #   );
  #   clusterInit = (meta.hostname == "homelab-0");
  # };

  # services.openiscsi = {
  #   enable = true;
  #   name = "iqn.2016-04.com.open-iscsi:${meta.hostname}";
  # };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.balssh = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
    # Created using mkpasswd
    hashedPassword = "$6$o3XK9XXyKEaMseJJ$WpeE3UBJ.N/b03CKNmrby6FDCQJynQgoRAMMeQnCT1ST97IZrSfOxtYjVgMp3MaQPddqVDSjAwILteMxjdjsp/";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIENwM6EA+g/8YlnTBMFAs+8KML6nbwF1wHOuF36LUtwh balssh"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID/IdPugZhKgV8E/W/1/pfddbcG6uZvLyXUmKPHGiOfi localhost"
    ];
  };

  nix.settings.trusted-users = [ "balssh" ];
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim
    # k3s
    cifs-utils
    nfs-utils
    git
  ];

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ 80 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  system.stateVersion = "23.11"; # Did you read the comment?

}
