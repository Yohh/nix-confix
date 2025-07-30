{
  programs.nixvim.plugins = {
    web-devicons = {
      enable = true;
    };

    startify = {
      enable = true;
      settings = {
        custom_header = [
          ""
          "     ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "     ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "     ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "     ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "     ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "     ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];

        change_to_dir = false;
        use_unicode = true;
        lists = [{ type = "dir"; }];
        files_number = 30;
        autoExpandWidth = true;
        skiplist = [
          "flake.lock"
        ];
      };
    };

    barbar = {
      enable = true;
      keymaps = {
        next.key = "<TAB>";
        previous.key = "<S-TAB>";
        close.key = "<C-w>";
      };
    };

    neo-tree = {
      enable = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
      enableRefreshOnWrite = true;
      enableDiagnostics = true;
      closeIfLastWindow = true;
      buffers = {
        bindToCwd = false;
        followCurrentFile = {
          enabled = true;
        };
      };
      filesystem = {
        filteredItems = {
          hideDotfiles = false;
          alwaysShow = [
            "node_modules"
            "dist"
            "'[A-Z]*'"
          ];
          visible = true;
        };
        followCurrentFile = {
          enabled = true;
          leaveDirsOpen = true;
        };
      };
    };

    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

    notify = {
      enable = true;
    };

    nui = {
      enable = true;
    };

    noice = {
      enable = true;
    };

    transparent = {
      enable = true;
      settings = {
        groups = [
          "Normal"
          "NormalNC"
          "Comment"
          "Constant"
          "Special"
          "Identifier"
          "Statement"
          "PreProc"
          "Type"
          "Underlined"
          "Todo"
          "String"
          "Function"
          "Conditional"
          "Repeat"
          "Operator"
          "Structure"
          # "LineNr"
          "NonText"
          # "SignColumn"
          "CursorLine"
          "CursorLineNr"
          "StatusLine"
          "StatusLineNC"
          "EndOfBuffer"
        ];
        exclude_groups = [
          "LineNr"
          "SignColumn"
        ];
      };
    };
  };
}
