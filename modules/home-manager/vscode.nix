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

    profiles.default = {
      keybindings = [
        {
          key = "ctrl+r";
          command = "code-runner.run";
        }

        {
          key = "ctrl+alt+n";
          command = "-code-runner.run";
        }
        {
          key = "ctrl+alt+n";
          command = "workbench.action.files.newUntitledFile";
        }

        {
          key = "ctrl+n";
          command = "-workbench.action.files.newUntitledFile";
        }

        {
          key = "ctrl+d";
          command = "editor.action.duplicateSelection";
        }

        {
          key = "ctrl+=";
          command = "workbench.action.zoomIn";
        }
        {
          key = "ctrl+numpad_add";
          command = "-workbench.action.zoomIn";
        }

        {
          key = "ctrl+f";
          command = "expandLineSelection";
          when = "textInputFocus";
        }
        {
          key = "ctrl+l";
          command = "-expandLineSelection";
          when = "textInputFocus";
        }

        {
          key = "ctrl+`";
          command = "workbench.action.toggleMultiCursorModifier";
        }

        {
          key = "ctrl+n";
          command = "welcome.showNewFileEntries";
        }
        {
          key = "ctrl+alt+meta+n";
          command = "-welcome.showNewFileEntries";
        }

        {
          key = "f11";
          command = "workbench.action.toggleFullScreen";
          when = "!isIOS";
        }
        {
          key = "f11";
          command = "-workbench.action.toggleFullScreen";
          when = "!isIOS";
        }

        {
          key = "ctrl+j";
          command = "java.debug.runJavaFile";
        }

        {
          key = "ctrl+shift+r";
          command = "workbench.action.openRecent";
        }
        {
          key = "ctrl+r";
          command = "-workbench.action.openRecent";
        }

        {
          key = "ctrl+\\";
          command = "workbench.action.terminal.toggleTerminal";
          when = "terminal.active";
        }
        {
          key = "ctrl+`";
          command = "-workbench.action.terminal.toggleTerminal";
          when = "terminal.active";
        }

        {
          key = "ctrl+l";
          command = "editor.action.addSelectionToNextFindMatch";
          when = "editorFocus";
        }
        {
          key = "ctrl+d";
          command = "-editor.action.addSelectionToNextFindMatch";
          when = "editorFocus";
        }

        {
          key = "ctrl+shift+v";
          command = "-cody.command.edit-code";
          when = "cody.activated && !editorReadonly";
        }

        {
          key = "alt+\\";
          command = "-cody.autocomplete.manual-trigger";
          when = "config.cody.autocomplete.enabled && editorTextFocus && !editorHasSelection && !inlineSuggestionsVisible";
        }

        {
          key = "ctrl+g";
          command = "editor.action.revealDefinition";
          when = "editorHasDefinitionProvider && editorTextFocus";
        }

        {
          key = "f12";
          command = "-editor.action.revealDefinition";
          when = "editorHasDefinitionProvider && editorTextFocus";
        }

        {
          key = "ctrl+shift+i";
          command = "editor.action.formatDocument";
          when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
        }

        {
          key = "ctrl+shift+i";
          command = "-editor.action.formatDocument";
          when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
        }

        {
          key = "ctrl+alt+s";
          command = "workbench.action.toggleStatusbarVisibility";
        }

        {
          key = "ctrl+alt+t";
          command = "hideCustomTitleBar";
        }
      ];
      
      userSettings = {
        "workbench.preferredLightColorTheme" = "Visual Studio Dark";
        "workbench.preferredHighContrastLightColorTheme" = "Visual Studio Dark";
        "workbench.iconTheme" = "catppuccin-latte";

        "explorer.confirmDelete" = false;
        "explorer.confirmDragAndDrop" = false;
        "explorer.compactFolders" = false;

        "code-runner.executorMap" = {
          "javascript" = "node";
          "java" = "cd $dir && javac $fileName && java $fileNameWithoutExt";
          "c" = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "cpp" = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "objective-c" =
            "cd $dir && gcc -framework Cocoa $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "php" = "php";
          "python" = "python3 -u";
          "perl" = "perl";
          "perl6" = "perl6";
          "ruby" = "ruby";
          "go" = "go run";
          "lua" = "lua";
          "groovy" = "groovy";
          "powershell" = "powershell -ExecutionPolicy ByPass -File";
          "bat" = "cmd /c";
          "shellscript" = "bash";
          "fsharp" = "fsi";
          "csharp" = "scriptcs";
          "vbscript" = "cscript //Nologo";
          "typescript" = "ts-node";
          "coffeescript" = "coffee";
          "scala" = "scala";
          "swift" = "swift";
          "julia" = "julia";
          "crystal" = "crystal";
          "ocaml" = "ocaml";
          "r" = "Rscript";
          "applescript" = "osascript";
          "clojure" = "lein exec";
          "haxe" = "haxe --cwd $dirWithoutTrailingSlash --run $fileNameWithoutExt";
          "rust" = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt";
          "racket" = "racket";
          "scheme" = "csi -script";
          "ahk" = "autohotkey";
          "autoit" = "autoit3";
          "dart" = "dart";
          "pascal" = "cd $dir && fpc $fileName && $dir$fileNameWithoutExt";
          "d" = "cd $dir && dmd $fileName && $dir$fileNameWithoutExt";
          "haskell" = "runhaskell";
          "nim" = "nim compile --verbosity:0 --hints:off --run";
          "lisp" = "sbcl --script";
          "kit" = "kitc --run";
          "v" = "v run";
          "sass" = "sass --style expanded";
          "scss" = "scss --style expanded";
          "less" = "cd $dir && lessc $fileName $fileNameWithoutExt.css";
          "FortranFreeForm" =
            "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "fortran-modern" =
            "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "fortran_fixed-form" =
            "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "fortran" = "cd $dir && gfortran $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt";
          "sml" = "cd $dir && sml $fileName";
        };

        "code-runner.saveAllFilesBeforeRun" = true;
        "code-runner.runInTerminal" = true;

        "[html]"."editor.defaultFormatter" = "vscode.html-language-features";

        "liveServer.settings.donotShowInfoMsg" = true;
        "liveServer.settings.CustomBrowser" = "firefox";

        "tabnine.experimentalAutoImports" = true;

        "[python]" = {
          "editor.formatOnType" = true;
          "editor.defaultFormatter" = "ms-python.black-formatter";
        };

        "[php]"."editor.defaultFormatter" = "DEVSENSE.phptools-vscode";

        "python.terminal.activateEnvironment" = false;
        "rapidapi.terminalLink.enabled" = false;

        "[javascript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
        "[css]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
        "[javascriptreact]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
        "[json]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
        "[typescript]"."editor.defaultFormatter" = "vscode.typescript-language-features";
        "[typescriptreact]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
        "[jsonc]"."editor.defaultFormatter" = "vscode.json-language-features";

        "files.exclude" = {
          "**/.git" = false;
        };

        "npm.keybindingsChangedWarningShown" = true;

        "vscord.status.problems.text" = "";
        "vscord.app.name" = "Visual Studio Code";
        "vscord.app.privacyMode.enable" = true;
        "vscord.status.problems.countedSeverities" = [ ];
        "vscord.status.problems.enabled" = false;

        "vscord.status.details.text.editing" = "Hello, Fellow Investigator";
        "vscord.status.state.text.editing" = "Working on QuantumQuill_CodeElysium{file_extension}";
        "vscord.status.details.text.debugging" = "Debugging {file_name}";
        "vscord.status.state.text.debugging" = "";

        "solidity.telemetry" = true;

        "codeium.enableSearch" = true;
        "codeium.enableConfig" = {
          "*" = true;
        };

        "editor.inlineSuggest.suppressSuggestions" = true;

        "editor.fontFamily" = "'MonoLisa','Droid Sans Mono','monospace',monospace";
        "editor.fontLigatures" = false;
        "editor.fontWeight" = "650";
        "editor.fontSize" = 15.5;
        "editor.tabSize" = 4;
        "editor.lineNumbers" = "on";
        "editor.cursorBlinking" = "solid";
        "editor.stickyScroll.enabled" = false;

        "terminal.integrated.fontFamily" = "MesloLGS NF";
        "terminal.integrated.fontSize" = 16;
        "terminal.integrated.stickyScroll.enabled" = false;
        "terminal.integrated.initialHint" = false;

        "files.autoSave" = "afterDelay";

        "workbench.activityBar.location" = "top";
        "workbench.preferredDarkColorTheme" = "Bearded Theme Vivid Light";
        "workbench.colorTheme" = "Bearded Theme Vivid Black";

        "workbench.colorCustomizations" = {
          "editor.background" = "#000000";
          "sideBar.background" = "#000000";
          "editorGutter.background" = "#000000";
          "minimap.background" = "#000000";
          "statusBar.background" = "#000000";
          "terminal.background" = "#000000";
        };

        "window.menuBarVisibility" = "toggle";
        "window.titleBarStyle" = "native";
        "window.customTitleBarVisibility" = "never";

        "workbench.statusBar.visible" = false;

        "git.autofetch" = true;
        "redhat.telemetry.enabled" = false;

        "leetcode.workspaceFolder" = "/home/hemil/.leetcode";
        "leetcode.hint.configWebviewMarkdown" = false;
        "leetcode.hint.commentDescription" = false;

        "javascript.updateImportsOnFileMove.enabled" = "always";
        "typescript.updateImportsOnFileMove.enabled" = "always";

        "extensions.experimental.affinity" = {
          "asvetliakov.vscode-neovim" = 1;
        };

        "explorer.fileNesting.patterns" = {
          "*.ts" = "\${capture}.js";
          "*.js" = "\${capture}.js.map, \${capture}.min.js, \${capture}.d.ts";
          "*.jsx" = "\${capture}.js";
          "*.tsx" = "\${capture}.ts";
          "tsconfig.json" = "tsconfig.*.json";
          "package.json" = "package-lock.json, yarn.lock, pnpm-lock.yaml, bun.lockb, bun.lock";
          "flake.nix" = "flake.lock";
          "*.sqlite" = "\${capture}.\${extname}-*";
          "*.db" = "\${capture}.\${extname}-*";
          "*.sqlite3" = "\${capture}.\${extname}-*";
          "*.db3" = "\${capture}.\${extname}-*";
          "*.sdb" = "\${capture}.\${extname}-*";
          "*.s3db" = "\${capture}.\${extname}-*";
        };
      };
    };
  };
}
