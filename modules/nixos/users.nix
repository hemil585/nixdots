{ config, pkgs, ... }:

{
  users.users.hemil = {
    isNormalUser = true;
    description = "Hemil Patel";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "wireshark"
    ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
