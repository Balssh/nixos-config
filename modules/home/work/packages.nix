{pkgs, ...}: {
  home.packages = with pkgs; [
    xclip
    jdk17
  ];
}
