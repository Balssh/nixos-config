{
  inputs,
  username,
  host,
  ...
}:
{
  imports = [
    ./bat.nix # better cat command
    ./fastfetch.nix # fetch tool
    ./fzf.nix # fuzzy finder
    ./lazygit.nix
    ./nvim # neovim editor
    ./packages.nix # other packages
    ./starship.nix # shell prompt
    ./zsh
  ];
}
