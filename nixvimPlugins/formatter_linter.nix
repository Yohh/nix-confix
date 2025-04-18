{
  programs.nixvim.plugins = {
    none-ls = {
      enable = true;
      settings = {
        cmd = [ "bash -c nvim" ];
        debug = true;
      };
      sources = {
        code_actions = {
          statix.enable = true;
          gitsigns.enable = true;
        };
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
          pylint.enable = true;
          checkstyle.enable = true;
        };
        formatting = {
          alejandra.enable = true;
          stylua.enable = true;
          shfmt.enable = true;
          nixpkgs_fmt.enable = true;
          prettier = {
            enable = true;
            disableTsServerFormatter = true;
            settings = {
              extra_filetypes = [ "vue" "json" ];
              insert_final_newline = true;
            };
          };
          black = {
            enable = true;
            settings = ''
              {
                extra_args = { "--fast" },
              }
            '';
          };
          xmllint = {
            enable = true;
            settings = {
              extra_filetypes = [
                "svg"
              ];
            };
          };
        };
        completion = {
          luasnip.enable = true;
          spell.enable = true;
        };
      };
    };

    lint = {
      enable = true;
      lintersByFt = {
        text = [ "vale" ];
        eslint = [ "eslint" ];
        json = [ "jsonlint" ];
        markdown = [ "vale" ];
        rst = [ "vale" ];
        ruby = [ "ruby" ];
        janet = [ "janet" ];
        inko = [ "inko" ];
        clojure = [ "clj-kondo" ];
        dockerfile = [ "hadolint" ];
        terraform = [ "tflint" ];
      };
    };

    tailwind-tools = {
      enable = true;
    };
  };
}
