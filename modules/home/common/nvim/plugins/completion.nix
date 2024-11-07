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
