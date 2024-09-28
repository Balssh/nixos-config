{
  programs.nixvim = {
    plugins = {
      fzf-lua = {
        enable = true;
        profile = "fzf-native";
        # settings = { };
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
