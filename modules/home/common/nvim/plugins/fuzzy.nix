{
  programs.nixvim = {
    plugins = {
      fzf-lua = {
        enable = true;
        profile = "fzf-native";
        settings = {
          fzf_opts = {
            "--cycle" = "";
          };
          keymap.fzf = {
            __unkeyed-1 = false; # do not inherit from defaults
            ctrl-d = "preview-half-page-down";
            ctrl-u = "preview-half-page-up";
          };
        };
        keymaps = {
          "<leader>sg" = "live_grep";
          "<leader>sf" = "files";
          "<leader>sr" = "resume";
          "<leader><leader>" = "buffers";
          "<leader>sw" = "grep_cword";
          "<leader>s." = "oldfiles";
        };
        luaConfig.post = "require('fzf-lua').register_ui_select()";
      };
    };
  };
}
