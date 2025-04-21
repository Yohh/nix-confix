{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;
      servers = {
        ts_ls = {
          enable = true; # TS
          filetypes = [ "typescript" "typescriptreact" "typescript.tsx" ];
        };
        cssls.enable = true; # CSS
        tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML
        emmet_ls = {
          enable = true;
          filetypes = [ "html" "css" "scss" "javascript" "javascriptreact" "typescript" "typescriptreact" "svelte" "vue" ];
        };
        svelte.enable = false; # Svelte
        volar = {
          enable = true; # Vue
          # volar formatter indent is broken, so we disable it in favor of prettier
          onAttach.function = ''
                 on_attach = function(client)
            client.server_capabilities.document_formatting = false
            client.server_capabilities.document_range_formatting = false
                 end
          '';
          onAttach.override = true;
        };
        angularls.enable = true; # Angular
        mdx_analyzer = {
          enable = true;
          package = null;
        };
        pyright.enable = true; # Python
        marksman.enable = true; # Markdown
        nil_ls.enable = true; # Nix
        dockerls.enable = true; # Docker
        bashls.enable = true; # Bash
        yamlls.enable = true; # YAML
        lua_ls = {
          enable = true;
          settings.telemetry.enable = false;
        };
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
          installRustfmt = true;
        };
      };
    };

    lsp-format = {
      enable = true;
    };

    lsp-status = {
      enable = true;
    };

    lspkind = {
      enable = true;
      cmp = {
        enable = true;
        menu = {
          nvim_lsp = "[LSP]";
          nvim_lua = "[api]";
          path = "[path]";
          luasnip = "[snip]";
          buffer = "[buffer]";
          neorg = "[neorg]";
        };
      };
    };

    lualine = {
      enable = true;
    };

    trouble = {
      enable = true;
      settings = {
        multiline = true;
      };
    };
  };
}
