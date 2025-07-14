{
  programs.git = {
    enable = true;
    userName = "Yohh";
    userEmail = "durandyohan@zaclys.net";
    extraConfig = {
      rerere.enable = true;
      commit.verbose = true;
      init.defaultBranch = "master";
    };
  };
}
