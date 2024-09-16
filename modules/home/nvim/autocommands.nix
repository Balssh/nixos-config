{
  programs.nixvim.autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }
    {
      event = "TextYankPost";
      callback = {__raw = "function() vim.highlight.on_yank() end";};
    }
  ];
}
