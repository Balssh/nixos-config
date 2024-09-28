{
  programs.nixvim = {
    globals = {
      loaded_netrw = 1;
      loaded_netrwPlugin = 1;
    };
    opts = {
      # Disable swapfile
      swapfile = false;
      # Make line numbers default
      number = true;
      relativenumber = true;
      # Enable mouse mode, can be useful for resizing splits for example!
      mouse = "a";
      # Don't show the mode, since it's already in status line
      showmode = false;
      clipboard = "unnamedplus";
      # Enable break indent
      breakindent = true;
      # Save undo history
      undofile = true;
      # Case#insensitive searching UNLESS \C or capital in search
      ignorecase = true;
      smartcase = true;
      # Keep signcolumn on by default
      signcolumn = "yes";
      # Decrease update time
      updatetime = 250;
      timeoutlen = 300;
      # Configure how new splits should be opened
      splitright = true;
      splitbelow = true;
      # Sets how neovim will display certain whitespace in the editor.
      list = true;
      listchars = {
        tab = "» ";
        trail = "·";
        nbsp = "␣";
      };
      # Preview substitutions live, as you type!
      inccommand = "split";
      # Show which line your cursor is on
      cursorline = true;
      # Minimal number of screen lines to keep above and below the cursor.
      scrolloff = 10;
      foldcolumn = "1"; # '0' is not bad
      foldlevel = 99; # Using ufo provider need a large value, feel free to decrease the value
      foldlevelstart = 99;
      foldenable = true;
      # Set highlight on search, but clear on pressing <Esc> in normal mode
      hlsearch = true;
    };
  };
}
