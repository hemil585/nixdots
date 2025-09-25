{ config, pkgs, ... }:

{
  home.username = "hemil";
  home.homeDirectory = "/home/hemil";

  home.stateVersion = "25.05"; 

  nixpkgs.config.allowUnfree = true;
	
  home.packages = with pkgs; [
    git
    fastfetch
    kitty
    fzf
    eza
    vscode
    insomnia
    nodejs
    wl-clipboard
    gnome-tweaks
    fluent-icon-theme
    bibata-cursors
  ];

  home.file = {};

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  home.sessionPath = [
    "$HOME/.npm-global/bin"
  ];

  imports = [
    ./modules/aliases.nix
    ./modules/fastfetch.nix
    ./modules/neovim.nix
    ./modules/git.nix
    ./modules/zsh.nix
    ./modules/bash.nix
    ./modules/vim.nix
    ./modules/fzf.nix
    ./modules/kitty.nix
  ];

  programs.home-manager.enable = true;
}