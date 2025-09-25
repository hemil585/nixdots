{...}:
let 
 aliases = {
   ".." = "cd ..";  
   "..." = "cd ../../";
    c  = "clear";
    l  = "eza -lh --icons=auto";
    ls = "eza --icons=auto";
    ll = "eza -lha --icons=auto --sort=name --group-directories-first";
    ld = "eza -lhD --icons=auto";
    lt = "eza --icons=auto --tree";
    gs = "git status";
    gc = "git commit -m";
    gca = "git commit -am";
    ga = "git add";
    gaa = "git add .";
    gpo = "git push -u origin";
    pn = "pnpm";
    pna = "pnpm add";
    pnd = "pnpm dev";
    pnb = "pnpm build";
    pni = "pnpm install";
    pnad = "pnpm add --save-dev";
    pnrm = "pnpm remove";
 };
in
{
  programs.bash.shellAliases = aliases;
  programs.zsh.shellAliases = aliases;
}