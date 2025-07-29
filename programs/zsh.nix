{ pkgs, ... }: {
  programs.zsh = {
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
      cat = "bat --paging=never -p";
      icat = "kitty +kitten icat";
      code = "flatpak run com.visualstudio.code";
      fixup = "git log -n 50 --oneline --no-merges | sk -d=' ' --preview='git show --color {1}' | cut -c -7 | xargs -o git commit --fixup";
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
    initExtra = "source ~/.git-auto-log-ssh-agent
                 export NIXPKGS_ALLOW_UNFREE=1
                 export PATH=$PATH:$HOME/go/bin";
  };
}
