{ config, pkgs, ... }:

{
  programs.fish.enable = true;

  environment.shells = with pkgs; [
    fish
    zsh
  ];
  users.defaultUserShell = pkgs.fish;

  programs.ssh.startAgent = true;

  programs.nix-ld.enable = true;

  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.gamemode.enable = true;

  programs.wireshark = {
    enable = true;
    dumpcap = {
      enable = true;
    };
  };
}
