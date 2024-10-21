{
  pkgs,
  host,
  ...
}:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "8.8.8.8"
      "8.8.4.4"
      "1.1.1.1"
    ];
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
