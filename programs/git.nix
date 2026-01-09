{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Yohh";
        email = "durandyohan@zaclys.net";
      };
      rerere.enable = true;
      commit.verbose = true;
      init.defaultBranch = "main";
      alias = {
	fixup = "!git log -n 50 --oneline --no-merges | sk -d=' ' --preview='git show --color {1}' | cut -c -7 | xargs -o git commit --fixup";
        prune-all = "!git branch | grep -v 'main'| xargs git branch -D";
      };
    };
  };
}
