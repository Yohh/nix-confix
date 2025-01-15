{
  programs.nixvim.plugins = {
    comment = {
      enable = true;
      settings = {
        opleader.line = "<C-b>";
        toggler.line = "<C-b>";
      };
    };

    todo-comments = {
      enable = true;
      settings = {
        keywords = {
          TODO = {
            color = "warning";
	    icon = " ";
          };
        };
        highlight = {
          pattern = ".*<(KEYWORDS)\\s*";
        };
      };
    };
  };
}
