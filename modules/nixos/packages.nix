{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    nvtopPackages.full
    pciutils
    distrobox
    wireshark
    mangohud
  ];

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;
}
