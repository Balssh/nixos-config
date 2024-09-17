{
  imports = [
    ./lsp.nix
    ./treesitter.nix
    ./completion.nix
    ./fuzzy.nix
    ./format.nix
    ./mini.nix
  ];

  programs.nixvim = {
    colorschemes = {
      gruvbox = {
        enable = true;
        settings.transparent_mode = true;
      };
    };

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

      # oil.enable = true;
      yazi.enable = true;
      sleuth.enable = true;
    };
  };
}
