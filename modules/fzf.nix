{...}:{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--height=10"
      "--layout=reverse"
    ];
  };
}