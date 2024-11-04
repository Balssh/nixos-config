{
  programs.nixvim = {
    opts.completeopt = [
      "menu"
      "menuone"
      "noselect"
    ];

    plugins = {
      blink-cmp = {
        enable = true;
        settings = {
          keymap = {
            "<C-space>" = [
              "show"
              "show_documentation"
              "hide_documentation"
            ];
            "<C-e>" = [ "hide" ];
            "<C-y>" = [ "select_and_accept" ];

            "<Up>" = [
              "select_prev"
              "fallback"
            ];
            "<Down>" = [
              "select_next"
              "fallback"
            ];
            "<C-p>" = [
              "select_prev"
              "fallback"
            ];
            "<C-n>" = [
              "select_next"
              "fallback"
            ];

            "<C-b>" = [
              "scroll_documentation_up"
              "fallback"
            ];
            "<C-f>" = [
              "scroll_documentation_down"
              "fallback"
            ];

            "<Tab>" = [
              "snippet_forward"
              "fallback"
            ];
            "<S-Tab>" = [
              "snippet_backward"
              "fallback"
            ];
          };
          highlight = {
            use_nvim_cmp_as_default = true;
          };
          windows = {
            documentation = {
              auto_show = true;
            };
          };
          accept = {
            auto_brackets = {
              enabled = true;
            };
          };
          trigger = {
            signature_help = {
              enabled = true;
            };
          };
        };
      };
    };
  };
}
