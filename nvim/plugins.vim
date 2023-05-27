call plug#begin('~/.local/share/nvim/plugged')

"syntax
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"Visual
Plug 'lukas-reineke/indent-blankline.nvim'

"Status bar
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
"Plug 'kdheepak/tabline.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }


"Themes
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'gosukiwi/vim-atom-dark'

"Typing
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

"AutoComplete
Plug 'neoclide/coc.nvim', {'branch':'release'}
let g:coc_global_extensions = ['coc-snippets', 'coc-emmet', 'coc-prettier', 'coc-pairs', 'coc-html', 'coc-tsserver', 'coc-json', 'coc-css', 'coc-java' , 'coc-angular']
Plug 'sirver/ultisnips'
"Plug 'mlaursen/vim-react-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'honza/vim-snippets'

"Navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'wfxr/minimap.vim'

"Others
Plug 'tpope/vim-eunuch' "Comandos de linux
Plug 'nicwest/vim-http'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vim-test/vim-test'
Plug 'jghauser/mkdir.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'AndrewRadev/splitjoin.vim'

"Git
Plug 'zivyangll/git-blame.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'homogulosus/vim-diff'

"others
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/goyo.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

call plug#end()

lua << EOF
require("bufferline").setup{}
EOF
