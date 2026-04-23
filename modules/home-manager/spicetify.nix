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
        spicyLyrics
      ];
      enabledCustomApps = [
        {
          name = "lyrics-plus";
          src = pkgs.fetchFromGitHub {
            owner = "spicetify";
            repo = "cli";
            rev = "main";
            sha256 = "77OZVDtybkYI5R3tZ7q2cLJ+Ixn8WB4CP4qP6Yp535g=";
          };
        }
      ];
    };
}
