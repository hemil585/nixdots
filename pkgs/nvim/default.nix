{
  stdenv,
  lib,
}:
stdenv.mkDerivation {
  pname = "hnvim";
  version = "unstable";

  src = builtins.path {
    path = ./nvim;
    name = "nvim-config";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/* "$out/"
  '';

  meta = with lib; {
    platforms = platforms.all;
    license = licenses.gpl3;
  };
}
