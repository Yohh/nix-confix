{ pkgs, ... }: {
  programs.nixvim.plugins = {
    lsp = {
      enable = true;
      servers = {
        ts_ls = {
          enable = true;
          filetypes = [
            "typescript"
            "typescriptreact"
            "typescript.tsx"
          ];
        };
        astro = {
          enable = true;
          extraOptions = {
            init_options = {
              typescript.tsdk = "${pkgs.typescript_5}/lib/node_modules/typescript/lib";
            };
          };
        };
        cssls.enable = true; # CSS
        html.enable = true; # HTML
        emmet_ls = {
          enable = true;
          filetypes = [
            "html"
            "css"
            "scss"
            "javascript"
            "javascriptreact"
            "typescript"
            "typescriptreact"
            "svelte"
            "vue"
            "astro"
          ];
        };
	oxfmt.enable = true;
	oxlint.enable = true;
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
      settings = {
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
