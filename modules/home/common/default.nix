{
  inputs,
  username,
  host,
  ...
}: {
  imports = [
    ./bat.nix # better cat command
    ./fastfetch.nix # fetch tool
    ./fzf.nix # fuzzy finder
    ./nvim # neovim editor
    ./packages.nix # other packages
    ./starship.nix # shell prompt
    ./zsh
  ];
}
