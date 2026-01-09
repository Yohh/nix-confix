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
      settings = {
        default_mappings = {
          ours = "co";
          theirs = "ct";
          none = "c0";
          both = "cb";
          next = "[x";
          prev = "]x";
        };
      };
    };
  };
}
