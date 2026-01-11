{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";

  environment.shells = with pkgs; [ fish ];
  users.defaultUserShell = pkgs.fish;
  programs.fish.enable = true;

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  virtualisation.docker = {
  	enable = true;
	  daemon.settings.features.cdi = true;
  };
  hardware.nvidia-container-toolkit.enable = true;

  # Enable firmware + microcode
  hardware = {
	cpu.intel.updateMicrocode = true;
	enableAllFirmware = true;
	enableRedistributableFirmware = true;
  };

  # Power management
  services.power-profiles-daemon.enable = true;
  powerManagement.enable = true;
  services.upower.enable = true;

  # Kernel tuning
  boot.kernel.sysctl = {
  	"kernel.nmi_watchdog" = 0;
	"vm.swappiness" = 10;
  };

  # Enable graphics stack
  hardware.graphics = {
	enable = true;
	extraPackages = with pkgs; [
		intel-media-driver
	];
  };

  #boot.blacklistedKernelModules = [ "nouveau" "nova_core" ];

  # Video drivers
  services.xserver.videoDrivers = [
	"modesetting"
	"nvidia"
  ];

  # NVIDIA
  hardware.nvidia = {
	open = true;
	modesetting.enable = true;
	powerManagement.enable = true;
	nvidiaSettings = true;

	prime = {
		offload.enable = true;
		offload.enableOffloadCmd = true;

		intelBusId = "PCI:0:2:0";
		nvidiaBusId = "PCI:1:0:0";
	};
  };

  # Perfomance tweaks
  boot.kernelParams = [ "nvidia_drm.modeset=1" ];

  # Intel thermal management
  services.thermald.enable = true;

  # Enable zram swap
  zramSwap.enable = true;
  #zramSwap.memoryMax = 16 * 1024 * 1024 * 1024; # 16GB

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hemil = {
    isNormalUser = true;
    description = "Hemil Patel";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    nvtopPackages.full
    pciutils
    distrobox    
    vscode
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
