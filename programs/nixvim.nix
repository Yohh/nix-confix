{
  programs.nixvim = {
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

    dependencies = {
      chafa.enable = true;
      imagemagick.enable = true;
    };
  };
}
