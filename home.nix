{ config, pkgs, ... }:

{
  home.username = "theo";
  home.homeDirectory = "/home/theo";

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
      env.TERM = "xterm-256color";
      font = {
        size = 12;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
