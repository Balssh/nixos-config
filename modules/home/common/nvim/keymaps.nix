{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        mode = "n";
        action = "<cmd>Oil<cr>";
        key = "-";
        options = {
          desc = "Open Oil";
        };
      }
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }
      {
        mode = "t";
        key = "<Esc><Esc>";
        action = "<C-\\><C-n>";
        options = {
          desc = "Exit terminal mode";
        };
      }
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w><C-h>";
        options = {
          desc = "Move focus to the left window";
        };
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w><C-l>";
        options = {
          desc = "Move focus to the right window";
        };
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w><C-j>";
        options = {
          desc = "Move focus to the lower window";
        };
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w><C-k>";
        options = {
          desc = "Move focus to the upper window";
        };
      }
      {
        mode = [
          "i"
          "n"
        ];
        key = "<C-s>";
        action = "<esc><cmd>w!<cr>";
        options = {
          desc = "Save file";
        };
      }
      {
        mode = "n";
        key = "<leader>bd";
        action = "<cmd>bdelete<cr>";
        options = {
          desc = "[B]uffer [D]elete";
        };
      }
      {
        mode = [
          "n"
          "v"
        ];
        action = {
          __raw = ''
            function()
              require("conform").format({
                lsp_fallback = true,
                async = true,
              })
            end
          '';
        };
        key = "<leader>bf";
      }
      {
        mode = [ "n" ];
        action = {
          __raw = ''
            function()
              local Terminal = require('toggleterm.terminal').Terminal:new { cmd = 'lazygit', dir = 'git_dir', hidden = true }
              Terminal:toggle()
            end
          '';
        };
        key = "<leader>gg";
      }
      {
        mode = [ "n" ];
        action = {
          __raw = ''
            function()
              require('gitsigns').blame_line()
            end
          '';
        };
        key = "<leader>gb";
      }
      {
        mode = [
          "n"
          "x"
          "o"
        ];
        action = {
          __raw = ''
            function()
              require("flash").jump()
            end
          '';
        };
        key = "gs";
      }
      {
        mode = [
          "n"
          "x"
          "o"
        ];
        action = {
          __raw = ''
            function()
              require("flash").treesitter()
            end
          '';
        };
        key = "gS";
      }
      {
        mode = [ "o" ];
        action = {
          __raw = ''
            function()
              require("flash").remote()
            end
          '';
        };
        key = "r";
      }
      {
        mode = [
          "x"
          "o"
        ];
        action = {
          __raw = ''
            function()
              require("flash").treesitter_search()
            end
          '';
        };
        key = "R";
      }
    ];
  };
}
