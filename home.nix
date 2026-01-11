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
  ];

  imports = [
    ./modules/fish.nix
    ./modules/zsh.nix
    ./modules/bash.nix
    ./modules/aliases.nix
    ./modules/kitty.nix
    ./modules/fzf.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
