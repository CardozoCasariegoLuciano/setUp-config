syntax enable

set encoding=utf-8
set nu rnu
set scrolloff=7 "el espacio en lineas que hay entre los bordes de la pantalla
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set fileformat=unix
set noswapfile
set cursorline
set ignorecase smartcase
set noshowmode
set mouse=a
set pumheight=10
set splitbelow
set splitright
set showtabline=2
set clipboard=unnamedplus
set foldcolumn=2
set sessionoptions+=tabpages,globals


set nolist
set hidden
set showmatch
"set hlsearch  => mantiene el resaltado de busquedas previas
set showcmd
set ruler
set numberwidth=1
"autochdir  => hace algo con la ruta raiz, mejor no tenerlo
set foldlevel=99

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on

autocmd BufWinLeave ?* mkview 
autocmd BufWinEnter ?* silent loadview 
autocmd BufEnter * set fo-=c fo-=r fo-=o 

so ~/.config/nvim/pluggins.vim
so ~/.config/nvim/mapping.vim
so ~/.config/nvim/pluggins_config.vim

