{ config, pkgs, ... }:

{

  imports = [
    ./zsh.nix
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

  # starship
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };
  
# alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      window.opacity = 0.95;
      
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        normal = {
          family = "JetBrains Mono";
          style = "Bold";
        };
      };
      scrolling.multiplier = 5;
      # selection.save_to_clipboard = true;
      colors.primary.background = "#1d2021";
      };
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
