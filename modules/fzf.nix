{ ... }:
{
  programs.fzf = {
    enable = false;
    enableZshIntegration = true;
    defaultOptions = [
      "--height=5"
      "--layout=reverse"
    ];
  };
}