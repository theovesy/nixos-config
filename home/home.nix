{ config, pkgs, ... }:

{

  imports = [
    ./modules/default.nix
  ];

  home.username = "theo";
  home.homeDirectory = "/home/theo";

  home.pointerCursor = {
    package = pkgs.vanilla-dmz;
    name = "Vanilla-DMZ";
    size = 48;
    gtk.enable = true;
    x11 = {
      enable = true;
      defaultCursor = true;
    };
  };

  # git configuration
  programs.git = {
    enable = true;
    userName = "Theo Vesy";
    userEmail = "theov@tuta.io";
  };


  home.stateVersion = "24.11";

  # not workin ----
  # catppuccin.enable = true;
  # catppuccin.flavor = "mocha";

  programs.home-manager.enable = true;
}
