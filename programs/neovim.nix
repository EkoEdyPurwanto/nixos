{
  pkgs,
  ...
}: let
  name = "eep";
in {
  home-manager = {
    users.${name} = {
      programs = {
        neovim = {
          enable = false;
          viAlias = true;
          vimAlias = true;
          vimdiffAlias = true;
          withNodeJs = true;
          withPython3 = true;
          withRuby = true;
          plugins = with pkgs.vimPlugins; [
            coc-clangd
            coc-clap
            coc-cmake
            coc-css
            coc-denite
            coc-diagnostic
            coc-docker
            coc-emmet
            coc-eslint
            coc-explorer
            coc-flutter
            coc-fzf
            coc-git
            coc-go
            coc-haxe
            coc-highlight
            coc-html
            coc-java
            coc-jest
            coc-json
            coc-lists
            coc-lua
            coc-markdownlint
            coc-metals
            coc-neco
            coc-nginx
            coc-nvim
            coc-pairs
            coc-prettier
            coc-pyright
            coc-python
            coc-r-lsp
            coc-rls
            coc-rust-analyzer
            coc-sh
            coc-smartf
            coc-snippets
            coc-solargraph
            coc-spell-checker
            coc-sqlfluff
            coc-stylelint
            coc-sumneko-lua
            coc-svelte
            coc-tailwindcss
            coc-texlab
            coc-toml
            coc-tslint
            coc-tslint-plugin
            coc-tsserver
            coc-ultisnips
            coc-vetur
            coc-vimlsp
            coc-vimtex
            coc-wxml
            coc-yaml
            coc-yank
            catppuccin-nvim
            nvim-autopairs
            nvim-jdtls
            nvim-lastplace
            nvim-metals
            nvim-web-devicons
            scope-nvim
            scrollbar-nvim
            statix
            surround-nvim
            tabline-nvim
            telescope-nvim
            vim-airline
            vim-airline-themes
            vim-commentary
            vim-lightline-coc
            vim-nix
            vim-wayland-clipboard
            yankring
          ];
          extraConfig = ''
            filetype indent on
            filetype on
            set backspace=indent,eol,start
            set expandtab
            set history=1000
            set hlsearch
            set ignorecase
            set incsearch
            set linebreak breakindent
            set list listchars=tab:>>,trail:~
            set nobackup
            set nocompatible
            set nowrap
            set nomodified
            set number relativenumber
            set scrolloff=10
            set shiftwidth=2
            set showcmd
            set showmatch
            set showmode
            set smartcase
            set smarttab
            set splitbelow
            set splitright
            set t_Co=256
            set tabstop=2
            set undofile
            set undolevels=50000
            set updatetime=100
            syntax on

            colorscheme catppuccin-frappe
            let g:airline_theme = 'catppuccin'

            let g:mapleader = "\<Space>"

            tnoremap <Esc> <C-\><C-n>
            tnoremap <A-h> <C-\><C-N><C-w>h
            tnoremap <A-j> <C-\><C-N><C-w>j
            tnoremap <A-k> <C-\><C-N><C-w>k
            tnoremap <A-l> <C-\><C-N><C-w>l
            inoremap <A-h> <C-\><C-N><C-w>h
            inoremap <A-j> <C-\><C-N><C-w>j
            inoremap <A-k> <C-\><C-N><C-w>k
            inoremap <A-l> <C-\><C-N><C-w>l
            nnoremap <A-h> <C-w>h
            nnoremap <A-j> <C-w>j
            nnoremap <A-k> <C-w>k
            nnoremap <A-l> <C-w>l
            nnoremap <silent> <Left> :vertical resize +2<CR>
            nnoremap <silent> <Right> :vertical resize -2<CR>
            nnoremap <silent> <Up> :resize +2<CR>
            nnoremap <silent> <Down> :resize -2<CR>
            nnoremap <silent> = <C-w>=
            vnoremap <silent> > >gv
            vnoremap <silent> < <gv
            nnoremap <silent> _ <C-W>s<C-W><Down>
            nnoremap <silent> <Bar> <C-W>v<C-W><Right>
            nnoremap <silent> <Leader>q :q<CR>
            nnoremap <silent> <leader>Q :bd<CR>
            nnoremap <silent> <leader>w :w<CR>
            vnoremap <leader>y "qygv<ESC>
            vnoremap <leader>x "+ygvd<ESC>
            nnoremap <silent> <Leader>t :terminal<CR>
          '';
          coc = {
            enable = true;
            pluginConfig = ''
              nnoremap <silent> <leader>e :CocCommand explorer
                \ --sources=buffer+,file+<CR>

              function! CheckBackspace() abort
                let col = col('.') - 1
                return !col || getline('.')[col - 1]  =~# '\s'
              endfunction

              inoremap <silent><expr> <Tab>
                \ coc#pum#visible() ? coc#pum#next(1) :
                \ CheckBackspace() ? "\<Tab>" :
                \ coc#refresh()

              inoremap <expr> <Tab>
                \ coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"

              inoremap <expr> <S-Tab>
                \ coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

              inoremap <silent><expr> <CR>
                \ coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
            '';
          };
        };
      };
    };
  };
}
