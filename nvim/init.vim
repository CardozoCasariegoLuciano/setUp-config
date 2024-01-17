syntax enable

set splitbelow
set splitright
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
set showtabline=2
set showtabline=2
set clipboard=unnamedplus
set foldcolumn=2
set hlsearch
set foldlevel=99
set foldmethod=indent
set showmatch
set showcmd
set nowrap

filetype on
filetype plugin on
filetype plugin indent on
filetype indent on


"Configurar Plugins de git
"Configurar el treesitter

autocmd Bufenter * set fo-=c fo-=r fo-=o "para que la siguiente linea no se comente si la anterior lo esta
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview
autocmd BufWritePre * :%s/\s\+$//e "Al guardar borra los espacios de mas al final de las lineas

so ~/.config/nvim/mapping.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/Plugins/init.vim
so ~/.config/nvim/themes.vim

set background=dark


"Resaltar lineas
" define line highlight color
highlight LineHighlight ctermbg=black guibg=black
" highlight the current line
nnoremap <silent> <Leader>Hn :call matchadd('LineHighlight', '\%'.line('.').'l')<CR>
" clear all the highlighted lines
nnoremap <silent> <Leader>Hc :call clearmatches()<CR>
