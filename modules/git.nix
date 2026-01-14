{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
        user.name = "Hemil Patel";
        user.email = "patelhemil585@gmail.com";
        alias = { };
        init.defaultBranch = "main";
    };
  };
}