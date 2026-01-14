{ inputs, pkgs, ... }:
{
  imports = [
    inputs.spicetify-nix.homeManagerModules.spicetify
  ];

  programs.spicetify =
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
    in
    {
      enable = true;
      theme = spicePkgs.themes.hazy;
      colorScheme = "Base";
      enabledExtensions = with spicePkgs.extensions; [
        shuffle
        hidePodcasts
        adblock
        beautifulLyrics
        simpleBeautifulLyrics
        fullAppDisplay
        groupSession
        popupLyrics
      ];
      enabledCustomApps = [
          {
            name = "lyrics-plus";
            src = pkgs.fetchFromGitHub {
              owner = "spicetify";
              repo = "cli";
              rev = "main";
              sha256 = "bFEr/XNGIOasErZDqz76quhYRoMrrvXJ3388O9I0t+M=";
            };
          }
      ];
    };
}