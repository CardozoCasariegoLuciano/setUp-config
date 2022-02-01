syntax on 

set nocompatible 
set nu rnu 
set scrolloff=7 "espacio en lineas que hay entre los bordes de la pantalla
set encoding=UTF-8
set ignorecase smartcase 
set cursorline ""
set shiftwidth=2
set tabstop=2
set expandtab ""
set autoindent
set smartindent 
set noshowmode
set mouse=a
set modelines=0
set cmdheight=1
set pumheight=10
set iskeyword+=-
set splitbelow
set splitright
set t_Co=256
set laststatus=2
set showtabline=2
set clipboard=unnamedplus 
set foldmethod=manual
set foldcolumn=2     " the number of columns to use for folding display at the left"
set foldlevel=99
set guioptions-=e
set sessionoptions+=tabpages,globals
set foldnestmax=2
set numberwidth=3 " el espacio entre el numero de linea y el codigo 

"Opciones que o ya estan por defecto activas
"O no se que hacen, o no son tan importantes
set ruler ""
set incsearch 
set showcmd
set showmatch 
set hidden 
set nolist 
"set hlsearch  => mantiene el resaltado de busquedas previas

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on


autocmd BufWinLeave ?* mkview 
autocmd BufWinEnter ?* silent loadview 
autocmd BufNewFile,BufRead *.tsx,*.js,*.jsx,*.ts,*.css set foldmethod=syntax
autocmd BufNewFile,BufRead *.py set foldmethod=indent
autocmd BufEnter * set fo-=c fo-=r fo-=o


so ~/.vim/map.vim
so ~/.vim/pugins.vim
so ~/.vim/plugin-configs.vim

