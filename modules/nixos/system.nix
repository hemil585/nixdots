{ config, pkgs, ... }:

{
  boot.kernel.sysctl = {
    "kernel.nmi_watchdog" = 0;
    "vm.swappiness" = 10;
  };

  zramSwap.enable = true;
  #zramSwap.memoryMax = 16 * 1024 * 1024 * 1024; # 16GB

  nix = {
    settings.auto-optimise-store = true;

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
}
