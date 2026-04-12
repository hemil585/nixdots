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
    kdePackages.kcalc
    kdePackages.korganizer
    kdePackages.kclock
    haruna
    cloudflared
    brave
    imhex
    redis
    bun
    openssl_oqs
    discord
    uv
    nix-index
  ];

  imports = [
    ./fish.nix
    ./zsh.nix
    ./bash.nix
    ./aliases.nix
    ./kitty.nix
    ./fzf.nix
    ./fastfetch.nix
    ./btop.nix
    ./spicetify.nix
    ./git.nix
    ./vim.nix
    ./nvim.nix
    ./vscode.nix
  ];

  home.sessionPath = [
    "$HOME/.npm-global/bin"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
