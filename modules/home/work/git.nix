{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    lfs.enable = true;

    userName = "GeorgeAndreiBals";
    userEmail = "andrei.bals@intel.com";

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
}
