{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode.overrideAttrs (old: {
      postInstall = (old.postInstall or "") + ''
        wrapProgram $out/bin/code \
          --add-flags "--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-features=WaylandWindowDecorations"
      '';
    });
  };
}
