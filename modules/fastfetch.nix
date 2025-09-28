{...}:{
    programs.fastfetch = {
    enable = true;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";

      logo = {
        Width = 30;
        Height = 15;
        padding = {
          top = 2;
        };
      };

      display = {
        separator = " ➜  ";
      };

      modules = [
        "break"
        "break"
        "break"
        {
          type = "os";
          key = "OS   ";
          keyColor = "red";
        }
        {
          type = "kernel";
          key = " ├  ";
          keyColor = "red";
        }
        {
          type = "shell";
          key = " └  ";
          keyColor = "red";
        }
        "break"
        {
          type = "wm";
          key = "WM   ";
          keyColor = "green";
        }
        {
          type = "terminal";
          key = " ├  ";
          keyColor = "green";
        }
        {
          type = "terminalfont";
          key = " └  ";
          keyColor = "green";
        }
        "break"
        {
          type = "host";
          format = "{5} {1} Type {2}";
          key = "PC   ";
          keyColor = "yellow";
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7}";
          key = " ├  ";
          keyColor = "yellow";
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12}";
          key = " ├ 󰢮 ";
          keyColor = "yellow";
        }
        {
          type = "uptime";
          key = " └  ";
          keyColor = "yellow";
        }
        {
          type = "memory";
          key = " ├  ";
          keyColor = "yellow";
        }
        {
          type = "packages";
          key = " ├  ";
          keyColor = "yellow";
        }
        {
          type = "swap";
          key = " ├ 󰓡 ";
          keyColor = "yellow";
        }
        {
          type = "disk";
          key = " ├ 󰋊 ";
          keyColor = "yellow";
        }
        {
          type = "monitor";
          key = " └  ";
          keyColor = "yellow";
        }
        "break"
        "break"
      ];
    };
  };
}