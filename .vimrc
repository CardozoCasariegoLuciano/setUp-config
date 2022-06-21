syntax enable

set nocompatible 
set encoding=utf-8
set nu rnu
set scrolloff=10 "el espacio en lineas que hay entre los bordes de la pantalla
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
set hlsearch
set foldlevel=99
set foldmethod=indent


"Opciones que o ya estan por defecto activas
"O no se que hacen, o no son tan importantes
set nolist
set hidden
set showmatch
set showcmd
set ruler
set numberwidth=1
"autochdir  => hace algo con la ruta raiz, mejor no tenerlo


filetype on
filetype plugin on
filetype plugin indent on
filetype indent on

"autocmd BufNewFile,BufRead *.tsx,*.js,*.jsx,*.ts,*.css set foldmethod=syntax
"autocmd BufNewFile,BufRead *.html,*.php,*.py setlocal foldmethod=indent
autocmd BufNewFile,BufRead *.txt setlocal foldmethod=manual
autocmd BufEnter * set fo-=c fo-=r fo-=o 
autocmd BufWinLeave ?* mkview 
autocmd BufWinEnter ?* silent loadview 

so ~/.vim/mapping.vim
so ~/.vim/pluggins.vim
so ~/.vim/pluggins_config.vim
so ~/.vim/themes.vim
