{ pkgs, ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
  });
in
{
  imports = [
    nixvim.homeManagerModules.nixvim
    ./nixvimPlugins/cmp.nix
    ./nixvimPlugins/copilot.nix
    ./nixvimPlugins/formatter_linter.nix
    ./nixvimPlugins/luasnip.nix
    ./nixvimPlugins/preview.nix
    ./nixvimPlugins/telescope.nix
    ./nixvimPlugins/comment.nix
    ./nixvimPlugins/emmet.nix
    ./nixvimPlugins/nvim_ui.nix
    ./nixvimPlugins/syntax_color_highlight.nix
    ./nixvimPlugins/lsp.nix
    ./nixvimPlugins/git.nix
    ./nixvimPlugins/keymaps.nix
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "yoh";

    homeDirectory = "/home/yoh";

    stateVersion = "24.05";

    packages = with pkgs; [
      # Gnome
      gnome-extension-manager
      gnomeExtensions.vitals
      gnomeExtensions.user-themes
      gnomeExtensions.dash-to-panel
      gnomeExtensions.gtile

      # Utils
      htop
      bat
      xclip
      wget
      zsh
      zsh-syntax-highlighting

      # Developpement
      git
      direnv
      nix-direnv
      alejandra
    ];

    sessionVariables.GTK_THEME = "Everforest-Dark-BL-LB";

    sessionVariables = {
      EDITOR = "nvim";
      SHELL = "/home/yoh/.nix-profile/bin/zsh";
    };
  };

  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "Vitals@CoreCoding.com"
        "dash-to-panel@jderose9.github.com"
        "gtile"
      ];
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Everforest-Dark-BL-LB";
      package = pkgs.everforest-gtk-theme;
    };
    iconTheme = {
      name = "Everforest-Dark";
      package = pkgs.everforest-gtk-theme;
    };
  };

  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      shellAliases = {
        nixdev = "nix develop --command zsh";
        nixdirenv = "echo \"use flake\" >> .envrc && direnv allow";
        nixconfig = "nvim ~/.config/home-manager/";
        nixclean = "nix-store --gc && nix-store --optimize";
        ddg = "web_search duckduckgo";
        ecosia = "web-search ecosia";
        cat = "bat --paging=never";
        icat = "kitty +kitten icat";
        code = "flatpak run com.visualstudio.code";
      };
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "direnv"
          "z"
          "copyfile"
          "web-search"
        ];
        custom = "$HOME/.oh-my-custom";
        theme = "agnoster-nix";
      };
      plugins = [
        {
          name = "zsh-nix-shell";
          file = "nix-shell.plugin.zsh";
          src = pkgs.fetchFromGitHub {
            owner = "chisui";
            repo = "zsh-nix-shell";
            rev = "v0.8.0";
            sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
          };
        }
      ];
      initExtra = "source ~/.git-auto-log-ssh-agent";
    };

    git = {
      enable = true;
      userName = "Yohh";
      userEmail = "durandyohan@zaclys.net";
      extraConfig = {
        rerere.enable = true;
        verbose.enable = true;
      };
      includes = [
        { path = "~/.gitconfig.local"; }
      ];
    };

    nixvim = {
      enable = true;
      opts = {
        number = true;
        shiftwidth = 2;
        completeopt = [ "menu" "menuone" "noselect" ];
        termguicolors = true;
      };

      colorschemes.everforest = {
        enable = true;
      };
    };

    home-manager = {
      enable = true;
    };
  };
}
