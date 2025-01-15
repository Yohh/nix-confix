{ lib
, config
, ...
}: {
  programs.nixvim = {
    keymaps =
      let
        normal =
          lib.mapAttrsToList
            (key: action: {
              mode = "n";
              inherit action key;
            })
            {
              # navigate between windows
              "<leader>h" = "<C-w>h";
              "<leader>l" = "<C-w>l";
              # open markdown preview
              "<leader>m" = ":MarkdownPreview<cr>";
            };
        visual =
          lib.mapAttrsToList
            (key: action: {
              mode = "v";
              inherit action key;
            })
            { };
      in
      config.lib.nixvim.keymaps.mkKeymaps { options.silent = true; } (normal ++ visual);
  };
}
