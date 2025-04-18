{
  programs.nixvim.plugins = {
    markdown-preview = {
      enable = true;
      settings = {
        auto_close = 0;
        theme = "dark";
      };
    };

    image = {
      enable = true;
    };
  };
}
