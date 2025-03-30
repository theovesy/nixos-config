{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      v = "vim";
      update = "sudo nixos-rebuild switch";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "blinks";
    };
  }; 
   
  # Starship
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      line_break.disabled = true;
    };
  };
}
