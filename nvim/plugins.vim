call plug#begin('~/.local/share/nvim/plugged')

"syntax
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'dense-analysis/ale' "Checko de sintaxis
Plug 'neoclide/jsonc.vim' "highlighting for JSON in Vim

"Visual
Plug 'lukas-reineke/indent-blankline.nvim'

"Status bar
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
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
Plug 'alvan/vim-closetag' "cuando abirs un tag, ya se crea el de cierre
Plug 'AndrewRadev/tagalong.vim' "Cuando editas un tag de apertura se modifica el de cierre
Plug 'preservim/nerdcommenter' "Comentar codigo <Leader>cc  o <Leader>ca

"AutoComplete
Plug 'neoclide/coc.nvim', {'branch':'release'}
let g:coc_global_extensions = ['coc-snippets', 'coc-emmet', 'coc-prettier', 'coc-pairs', 'coc-html', 'coc-tsserver', 'coc-json', 'coc-css', 'coc-java' , 'coc-angular', 'coc-svg', 'coc-nav', 'coc-eslint']
Plug 'sirver/ultisnips'
"Plug 'mlaursen/vim-react-snippets'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'honza/vim-snippets'

"Formater
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

"Navigation
Plug 'scrooloose/nerdtree' "<Leader>nt or <Leader>nf to open in the current file
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'wfxr/minimap.vim' "<Leader>Mp
Plug 'easymotion/vim-easymotion' "To navegate usgin 2 leters <Leader>s
Plug 'MattesGroeger/vim-bookmarks' "Marcadores <Leader>ba
Plug 'ThePrimeagen/harpoon' "Save paths to easy access <Leader>ml

"IDE
Plug 'vim-test/vim-test' "Para ejecutar los test de forma mas rapida
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } "Markdown preview :MarkdownPreview
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' } "Es un fuzzy finder <Leader>ff o <Leader>ft
Plug 'ap/vim-css-color' "css colors highlighter
Plug 'KabbAmine/vCoolor.vim' "Color picker <Alt>c
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "Multiples cursores <Ctrl>n y <SHIFT>q para sacar cursor

"Others
Plug 'nicwest/vim-http' "Para hacer peticiones http desde un archivo .http
Plug 'jghauser/mkdir.nvim' "Cuando guardas un archivo, si no existe la carpeta o directorio, te lo crea ahi mismo
Plug 'nvim-lua/plenary.nvim' "Dependencias de LUA es importante para un monton de plugins
Plug 'AndrewRadev/splitjoin.vim' "agiliza los saltos de linea gS para hacer el salto y gJ para que se junte
Plug 'liuchengxu/vim-which-key' "List all leader mapping <Leader>'
Plug 'mhinz/vim-startify' "whet just text nvim gets a dashboard
Plug 'junegunn/goyo.vim' "Full size window <Leader>gg
Plug 'JellyApple102/flote.nvim' "Notes in vim <Leader>nl for local or <Leader>ng for global notes
Plug 'dhruvasagar/vim-open-url' "Para abrir direcciones en el navegador <Leader>gw1 y <Leader>gw2
Plug 'KabbAmine/zeavim.vim' "Documentation <Leader>zz

"Scroll and cursor Animations
Plug 'echasnovski/mini.nvim'
Plug 'echasnovski/mini.animate'

"Git
Plug 'zivyangll/git-blame.vim' " <Leader>Bl
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'homogulosus/vim-diff'
call plug#end()
