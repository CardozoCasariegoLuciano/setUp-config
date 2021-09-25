let mapleader = " " 

syntax on 

set nocompatible 
set clipboard=unnamedplus  ""
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
set laststatus=2
set noshowmode
set mouse=a
 set modelines=0

filetype off
filetype plugin on
filetype plugin indent on
filetype indent on

autocmd BufWinLeave ?* mkview 
autocmd BufWinEnter ?* silent loadview<ScrollWheelUp> 

so ~/.vim/map.vim
so ~/.vim/pugins.vim
so ~/.vim/plugin-configs.vim

colorscheme papaya 
