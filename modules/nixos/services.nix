{ config, pkgs, ... }:

{
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.keyd = {
    enable = true;

    keyboards.default = {
      ids = [ "0001:0001:d6a1a789" ];

      settings = {
        main = {
          "leftshift+leftmeta+f23" = "rightcontrol";
        };
      };
    };
  };

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  powerManagement.enable = true;
  services.thermald.enable = true;

  security.rtkit.enable = true;
}
