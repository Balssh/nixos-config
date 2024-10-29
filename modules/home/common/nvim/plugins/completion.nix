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
            show = "<C-space>";
            hide = "<C-e>";
            accept = "<C-y>";
            select_prev = "<C-p>";
            select_next = "<C-n>";
            show_documentation = "<C-space>";
            hide_documentation = "<C-space>";
            scroll_documentation_up = "<C-b>";
            scroll_documentation_down = "<C-f>";
          };
          highlight = {
            use_nvim_cmp_as_default = true;
          };
          documentation = {
            auto_show = true;
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
