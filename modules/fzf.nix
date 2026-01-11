{ ... }:
{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--height=5"
      "--layout=reverse"
    ];
  };
}