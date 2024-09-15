{
  imports = [
    ./lsp.nix
    ./treesitter.nix
    ./completion.nix
  ];

  programs.nixvim = {
    colorschemes.gruvbox.enable = true;

    plugins = {
      gitsigns = {
        enable = true;
        settings.signs = {
          add.text = "+";
          change.text = "~";
          delete.text = "_";
          topdelete.text = "‾";
          changedelete.text = "~";
        };
      };

      oil.enable = true;
      sleuth.enable = true;
    };
  };
}
