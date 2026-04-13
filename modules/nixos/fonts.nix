{ pkgs, ... }:

{
  fonts.packages = [
    (pkgs.stdenv.mkDerivation {
      name = "local-inter-font";
      src = ../../assets/fonts/inter;

      installPhase = ''
        mkdir -p $out/share/fonts/truetype
        cp *.ttf $out/share/fonts/truetype/
      '';
    })

    (pkgs.stdenv.mkDerivation {
      name = "local-meslo-font";
      src = ../../assets/fonts/meslo;

      installPhase = ''
        mkdir -p $out/share/fonts/truetype
        cp *.ttf $out/share/fonts/truetype/
      '';
    })

    (pkgs.stdenv.mkDerivation {
      name = "local-monolisa-font";
      src = ../../assets/fonts/monolisa;

      installPhase = ''
        mkdir -p $out/share/fonts/truetype
        cp *.ttf $out/share/fonts/truetype/
      '';
    })
  ];
}
