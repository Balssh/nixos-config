{pkgs, ...}: {
  programs.git = {
    enable = true;

    userName = "Balssh";
    userEmail = "george.bals25@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      credential.helper = "store";
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = true;
        navigate = true;
      };
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}
