{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
      folding = false;
    };

    colorizer = {
      enable = true;
      settings = {
        user_default_options = {
          AARRGGBB = true;
          RGB = true;
          RRGGBB = true;
          RRGGBBAA = true;
          css = true;
          css_fn = true;
          hsl_fn = true;
          mode = "background";
          names = true;
          rgb_fn = true;
          tailwind = true;
        };
      };
    };
  };
}
