{ configs, ... }:
{
  programs.alacritty = {
    enable = true;

    # custom settings
    settings = {
      window.opacity = 0.95;
      
      env.TERM = "xterm-256color";

	  # Font
      font = {
        size = 12;
        normal = {
          family = "JetBrains Mono";
          style = "Bold";
        };
      };
      scrolling.multiplier = 5;
      # selection.save_to_clipboard = true;

	  # Theme "thelovelace"
      colors.primary.background = "#1d1F28";
      colors.primary.foreground = "#FDFDFD";

      colors.normal.black   = "#282A36";
      colors.normal.red     = "#F37F97";
      colors.normal.green   = "#5ADECD";
      colors.normal.yellow  = "#F2A272";
      colors.normal.blue    = "#8897F4";
      colors.normal.magenta = "#C574DD";
      colors.normal.cyan    = "#79E6F3";
      colors.normal.white   = "#FDFDFD";

      colors.bright.black   = "#414458";
      colors.bright.red     = "#FF4971";
      colors.bright.green   = "#18E3C8";
      colors.bright.yellow  = "#EBCB8B";
      colors.bright.blue    = "#FF8037";
      colors.bright.magenta = "#556FFF";
      colors.bright.cyan    = "#3FDCEE";
      colors.bright.white   = "#BEBEC1";
    };
  };
}
