{ pkgs, ... }: {
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
}
