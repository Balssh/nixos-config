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
            nix = ["nixfmt"];
            groovy = ["groovy"];
            "_" = [
              "squeeze_blanks"
              "trim_whitespace"
              "trim_newlines"
            ];
          };
          formatters = {
            groovy = {
              command = "/home/balssh/.npm-packages/bin/npm-groovy-lint";
              args = "--noserver --format $FILENAME";
              stdin = false;
            };
          };
        };
      };
    };
  };
}
