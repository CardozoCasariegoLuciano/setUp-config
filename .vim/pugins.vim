call plug#begin('~/.vim/plugged')

"Syntax
Plug 'sheerun/vim-polyglot'

"THEME
Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'mangeshrex/uwu.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'rakr/vim-one'
Plug 'sainnhe/sonokai'
Plug 'tomasiser/vim-code-dark'


"StatusBar
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'

"Tree
Plug 'scrooloose/nerdtree' 

"Typing
Plug 'tpope/vim-surround' 
Plug 'alvan/vim-closetag'

"Tmux
Plug 'christoomey/vim-tmux-navigator' 

"AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-snippets', 'coc-emmet', 'coc-prettier', 'coc-pairs', 'coc-html', 'coc-tsserver', 'coc-json', 'coc-css', 'coc-pyright']
Plug 'sirver/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'


"IDE
Plug 'junegunn/fzf'   
Plug 'junegunn/fzf.vim'  
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter' 
Plug 'KabbAmine/zeavim.vim'  
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} 
Plug 'dense-analysis/ale'  
Plug 'ap/vim-css-color'

"Testing
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest'  

"others
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/goyo.vim'
Plug 'gcmt/taboo.vim'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'

call plug#end()


source ~/.vim/themes.vim


