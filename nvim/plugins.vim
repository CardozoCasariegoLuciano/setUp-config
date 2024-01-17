call plug#begin('~/.local/share/nvim/plugged')

"syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Visual
Plug 'lukas-reineke/indent-blankline.nvim',

"Status bar
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

"Themes
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'gosukiwi/vim-atom-dark'

"Typing
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag' "cuando abirs un tag, ya se crea el de cierre
Plug 'AndrewRadev/tagalong.vim' "Cuando editas un tag de apertura se modifica el de cierre
Plug 'preservim/nerdcommenter' "Comentar codigo <Leader>cc  o <Leader>ca

"AutoComplete
Plug 'neoclide/coc.nvim', {'branch':'release'}
let g:coc_global_extensions = [
      \'coc-snippets',
      \ 'coc-emmet',
      \ 'coc-prettier',
      \ 'coc-pairs',
      \ 'coc-html',
      \ 'coc-tsserver',
      \ 'coc-json',
      \ 'coc-css',
      \ 'coc-java' ,
      \ 'coc-angular',
      \ 'coc-svg',
      \ 'coc-nav',
      \ 'coc-eslint',
      \ 'coc-vimlsp',
      \ 'coc-lua',
      \ 'coc-docker',
      \]
Plug 'sirver/ultisnips'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'honza/vim-snippets'

"Formater
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

"Navigation
Plug 'nvim-tree/nvim-tree.lua'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion' "To navegate usgin 2 leters <Leader>s
Plug 'MattesGroeger/vim-bookmarks' "Marcadores <Leader>bt o <Leader>ba
Plug 'ThePrimeagen/harpoon' , { 'branch': 'harpoon2' } "Save paths to easy access <Leader>ml list, <Leader>ma addPath,

"IDE
Plug 'vim-test/vim-test' "Para ejecutar los test de forma mas rapida
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } "Markdown preview :MarkdownPreview
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' } "Es un fuzzy finder <Leader>ff o <Leader>ft
Plug 'ap/vim-css-color' "css colors highlighter
Plug 'KabbAmine/vCoolor.vim' "Color picker <Alt>c
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Multiples cursores <Ctrl>n y <SHIFT>q para sacar cursor

"Others
Plug 'nvim-lua/plenary.nvim' "Dependencias de LUA es importante para un monton de plugins
Plug 'AndrewRadev/splitjoin.vim' "agiliza los saltos de linea gS para hacer el salto y gJ para que se junte
Plug 'liuchengxu/vim-which-key' "List all leader mapping <Leader>'
Plug 'JellyApple102/flote.nvim' "Notes in vim <Leader>nl for local or <Leader>ng for global notes
Plug 'dhruvasagar/vim-open-url' "Para abrir direcciones en el navegador <Leader>wg y <Leader>wG

"Scroll and cursor Animations
Plug 'echasnovski/mini.nvim'
Plug 'echasnovski/mini.animate'

"Doc Generator
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}

"Git
Plug 'tpope/vim-fugitive' " <Leader>gg open git menu
Plug 'lewis6991/gitsigns.nvim', " <Leader>Gp, <Leader>Gs, <Leader>Gt,
Plug 'homogulosus/vim-diff'
call plug#end()
