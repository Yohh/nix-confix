{
  programs.nixvim.plugins = {
    gitsigns = {
      enable = true;
      autoLoad = true;
      settings = {
        current_line_blame = true;
      };
    };

    gitmessenger = {
      enable = true;
      autoLoad = true;
    };

    diffview = {
      enable = true;
    };

    git-conflict = {
      enable = true;
    };
  };
}
