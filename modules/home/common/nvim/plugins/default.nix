{
  imports = [
    ./lsp.nix
    ./treesitter.nix
    ./completion.nix
    ./fuzzy.nix
    ./format.nix
    ./mini.nix
    ./yazi.nix
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

      sleuth.enable = true;

      toggleterm = {
        enable = true;
        settings = {
          size = 20;
          open_mapping = "[[<c-t>]]";
          hide_numbers = true;
          shade_terminals = true;
          shading_factor = 2;
          start_in_insert = true;
          insert_mappings = true;
          persist_size = true;
          direction = "float";
          close_on_exit = true;
        };
      };
    };
  };
}
