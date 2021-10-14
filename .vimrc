let mapleader = " " 

syntax on 

set nocompatible 
set nu rnu 
set encoding=utf-8 ""
set nolist 
set ignorecase smartcase 
set hidden 
set showmatch 
set hlsearch 
set incsearch 
set showcmd
set ruler ""
set numberwidth=1
set cursorline ""
set sw=2  ""
set shiftwidth=2
set tabstop=2
set expandtab ""
set autoindent
set smartindent 
set noshowmode
set mouse=a
set modelines=0
set cmdheight=2
set pumheight=10
set iskeyword+=-
set splitbelow
set splitright
set t_Co=256
set laststatus=2
set showtabline=2
set formatoptions-=cro
set clipboard=unnamedplus 
set autochdir 



set foldmethod=manual
set foldcolumn=1     " the number of columns to use for folding display at the left"
set foldlevel=99

filetype off
filetype plugin on
filetype plugin indent on
filetype indent on

"autocmd BufWinLeave ?* mkview 
"autocmd BufWinEnter ?* silent loadview<ScrollWheelUp> 
autocmd BufNewFile,BufRead *.tsx,*js,*jsx,*ts  set foldmethod=syntax


so ~/.vim/map.vim
so ~/.vim/pugins.vim
so ~/.vim/plugin-configs.vim

colorscheme papaya 
