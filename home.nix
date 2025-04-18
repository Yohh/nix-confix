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
    ./programs/zsh.nix
    ./programs/git.nix
    ./programs/nixvim.nix
    ./display/gtk.nix
    ./display/dconf.nix
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
      dotnetCorePackages.sdk_9_0-bin
    ];

    sessionVariables.GTK_THEME = "Everforest-Dark-BL-LB";

    sessionVariables = {
      EDITOR = "nvim";
      SHELL = "/home/yoh/.nix-profile/bin/zsh";
    };
  };

  programs = {
    home-manager = {
      enable = true;
    };
  };
}
