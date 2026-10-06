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
        lists = [ { type = "dir"; } ];
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
      settings = {
        enable_git_status = true;
        enable_modified_markers = true;
        enable_refresh_on_write = true;
        enable_diagnostics = true;
        close_if_last_window = true;
        buffers = {
          bind_to_cwd = false;
          follow_current_file = {
            enabled = true;
          };
        };
        filesystem = {
          follow_current_file = {
            enabled = true;
            leave_dirs_open = true;
          };
          filtered_items = {
            hide_dotfiles = false;
            always_show = [
              "node_modules"
              "dist"
              "'[A-Z]*'"
            ];
            visible = true;
          };
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
      settings = {
        render = "wrapped-compact";
      };
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
