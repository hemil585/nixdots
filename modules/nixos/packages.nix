{ config, pkgs, ... }:

let
  background-image = pkgs.runCommand "background-image" { } ''
    cp ${../../assets/wallpapers/girl_gruvbox.jpg} $out
  '';
in
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    nvtopPackages.full
    pciutils
    distrobox
    wireshark
    mangohud
    (writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
      [General]
      background=${background-image}
    '')
  ];

  programs.firefox.enable = true;

  nixpkgs.config.allowUnfree = true;
}
