{ pkgs, ... }:
{
  home.file = {
    ".config/nvim" = {
      recursive = true;
      source = pkgs.hnvim;
      force = true;
    };
  };

  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
      withPython3 = true;
      withNodeJs = true;
    };
  };
}
