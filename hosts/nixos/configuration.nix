{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/core.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/packages.nix
    ../../modules/nixos/services.nix
    ../../modules/nixos/hardware.nix
    ../../modules/nixos/programs.nix
    ../../modules/nixos/virtualisation.nix
    ../../modules/nixos/system.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/fonts.nix
  ];
}
