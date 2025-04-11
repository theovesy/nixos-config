{ pkgs, lib, ... }:

{
  vim = {

    # Theme
    theme = {
      enable = true;
      name = "catppuccin";
    };
    filetree.nvimTree.setupOpts.view.relativenumber = true;

    # Plugins
    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;
    
    # Languages
    languages = {
      enableLSP = true;
      enableTreesitter = true;

      nix.enable = true;
      rust.enable = true;
      clang.enable = true;
      assembly.enable = true;
      markdown.enable = true;
      python.enable = true;
  };
}

