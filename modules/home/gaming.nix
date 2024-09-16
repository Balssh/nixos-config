{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    ## Minecraft
    # prismlauncher

    ## Cli games
    _2048-in-terminal

    inputs.aagl.packages.${pkgs.system}.honkers-railway-launcher

  ];
}
