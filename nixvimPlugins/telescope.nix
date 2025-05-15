{
  programs.nixvim.plugins = {
    telescope = {
      enable = true;
      extensions = {
        media-files = {
          enable = true;
          settings = {
            filetypes = [
              "png"
              "jpg"
              "jpeg"
              "webp"
              "gif"
            ];
            find_cmd = "rg";
          };
        };
      };
      keymaps = {
        # Find files using Telescope command-line sugar.
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
        "<leader>b" = "buffers";
        "<leader>fh" = "help_tags";
        "<leader>fd" = "diagnostics";
        "<leader>mf" = "media_files";

        # FZF like bindings
        "<C-p>" = "git_files";
        "<leader>p" = "oldfiles";
        "<C-f>" = "live_grep";
      };
      settings.defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        set_env.COLORTERM = "truecolor";
      };
    };
  };
}
