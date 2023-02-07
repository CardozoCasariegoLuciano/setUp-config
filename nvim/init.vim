syntax enable

set nocompatible
set encoding=utf-8
set nu rnu
set scrolloff=10 "el espacio en lineas entre los bordes de la pantalla
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
set splitbelow
set splitright
set showtabline=2
set clipboard=unnamedplus
set foldcolumn=2
set hlsearch
set foldlevel=99
set foldmethod=indent
set showmatch
set showcmd

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on
	
autocmd Bufenter * set fo-=c fo-=r fo-=o "para que la siguiente linea no se comente si la anterior lo esta
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview

so ~/.config/nvim/mapping.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugins_config.vim
so ~/.config/nvim/themes.vim

set background=dark
