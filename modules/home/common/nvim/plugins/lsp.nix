{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>q" = {
              action = "setqflist";
              desc = "Open diagnostic [Q]uickfix list";
            };
            "<leader>e" = {
              action = "open_float";
              desc = "Show diagnostic [E]rror messages";
            };
          };

          lspBuf = {
            K = "hover";
            "<leader>ca" = "code_action";
            "<leader>lr" = "rename";
          };
        };

        servers = {
          clangd.enable = true;
          lua_ls.enable = true;
          gopls.enable = true;
          basedpyright.enable = true;
          ruff_lsp.enable = true;
          bashls.enable = true;
          nixd = {
            enable = true;
            extraOptions = {
              nixpkgs = {
                "expr" = ''import (builtins.getFlake "/home/balssh/nixos-config/").inputs.nixpkgs { }'';
              };
              nixos = {
                expr = ''(builtins.getFlake "/home/balssh/nixos-config/").nixosConfigurations.laptop.options'';
              };
              home_manager = {
                expr = ''(builtins.getFlake "/home/balssh/nixos-config/").homeConfigurations.work.options'';
              };
            };
          };
        };

        onAttach = ''
          local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = bufnr, desc = 'LSP: ' .. desc })
          end

          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = bufnr,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = bufnr,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end

          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
            map('<leader>th', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
            end, '[T]oggle Inlay [H]ints')
          end

          -- Jump to the definition of the word under your cursor.
          --  To jump back, press <C-t>.
          map('gd', require('fzf-lua').lsp_definitions, '[G]oto [D]efinition')

          -- Find references for the word under your cursor.
          map('gr', require('fzf-lua').lsp_references, '[G]oto [R]eferences')

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map('gI', require('fzf-lua').lsp_implementations, '[G]oto [I]mplementation')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('<leader>lD', require('fzf-lua').lsp_typedefs, '[L]SP Type [D]efinition')

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('<leader>lsd', require('fzf-lua').lsp_document_symbols, '[L]SP [S]ymbols [D]ocument ')

          -- Fuzzy find all the symbols in your current workspace
          --  Similar to document symbols, except searches over your whole project.
          map('<leader>lsw', require('fzf-lua').lsp_live_workspace_symbols, '[L]SP [S]ymbols [W]orkspace')

        '';
      };
    };
  };
}
