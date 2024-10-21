{
  programs.nixvim = {
    plugins = {
      mini = {
        enable = true;
        modules = {
          ai = {
            n_lines = 50;
          };
          statusline = {
            use_icons = true;
          };
          tabline = { };
          trailspace = { };
          bufremove = { };
          bracketed = { };
          surround = { };
        };
      };
    };
  };
}
