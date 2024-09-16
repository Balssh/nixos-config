{
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        enable = true;
        settings = {
          notify_on_error = true;
          formatters_by_ft = {
            lua = ["stylua"];
            bash = ["shfmt"];
            sh = ["shfmt"];
            zsh = ["shfmt"];
            cpp = ["clang_format"];
            nix = ["alejandra"];
            python = ["ruff_format"];
            "_" = [
              "squeeze_blanks"
              "trim_whitespace"
              "trim_newlines"
            ];
          };
        };
      };
    };
  };
}
