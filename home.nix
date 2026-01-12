{ config, pkgs, ... }:

{
  home.username = "hemil";
  home.homeDirectory = "/home/hemil";

  home.stateVersion = "25.11"; 

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    git
    fastfetch
    fzf
    eza
    vscode
    nodejs
    postman
    wl-clipboard
    fluent-icon-theme
    bibata-cursors
    yt-dlp
    gcc
    vlc
    libreoffice
    telegram-desktop
  ];

  imports = [
    ./modules/fish.nix
    ./modules/zsh.nix
    ./modules/bash.nix
    ./modules/aliases.nix
    ./modules/kitty.nix
    ./modules/fzf.nix
    ./modules/fastfetch.nix
  ];

  home.sessionPath = [
    "$HOME/.npm-global/bin"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
