{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    vimAlias = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      lua-language-server
      stylua
      bash-language-server
      pyright
      ruff-lsp
      shfmt
      clang-tools
    ];
  };
}
