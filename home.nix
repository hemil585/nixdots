{ config, pkgs, ... }:

{
  home.username = "hemil";
  home.homeDirectory = "/home/hemil";

  home.stateVersion = "25.11"; 

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    git
  ];

  imports = [
    ./modules/fish.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
