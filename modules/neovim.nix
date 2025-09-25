{...}:{
    programs.neovim = {
    enable = true;

    extraConfig = ''
    set number
    set relativenumber
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set cursorline
    set ignorecase
    set smartcase
    set hlsearch
    set scrolloff=8
    set clipboard=unnamedplus
      '';
    };
}