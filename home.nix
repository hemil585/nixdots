{
  config,
  pkgs,
  pkgs-unstable,
  inputs,
  ...
}:

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
    vscode
    nodejs
    postman
    inputs.zen-browser.packages."${pkgs.system}".default
    wl-clipboard
    fluent-icon-theme
    bibata-cursors
    yt-dlp
    gcc
    vlc
    libreoffice
    telegram-desktop
    htop
    btop
    tradingview
    protonvpn-gui
    nixfmt
    gnome-system-monitor
    lm_sensors
    gnome-disk-utility
    gdu
    glib
    dmidecode
    cheese
    ffmpeg-full
    baobab
    totem
    gnome-calculator
    gnome-calendar
    gnome-clocks
    haruna
  ];

  imports = [
    ./modules/fish.nix
    ./modules/zsh.nix
    ./modules/bash.nix
    ./modules/aliases.nix
    ./modules/kitty.nix
    ./modules/fzf.nix
    ./modules/fastfetch.nix
    ./modules/btop.nix
    ./modules/spicetify.nix
    ./modules/git.nix
    ./modules/vim.nix
    ./modules/nvim.nix
  ];

  home.sessionPath = [
    "$HOME/.npm-global/bin"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
