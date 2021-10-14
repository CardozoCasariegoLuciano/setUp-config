call plug#begin('~/.vim/plugged')

"Syntax
Plug 'sheerun/vim-polyglot'

"THEME
Plug 'HenryNewcomer/vim-theme-papaya'


"StatusBar
Plug 'vim-airline/vim-airline' 

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


"IDE
Plug 'junegunn/fzf'   ", { 'do': { -> fzf#install()  }  } 
Plug 'junegunn/fzf.vim'  
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter' 
Plug 'KabbAmine/zeavim.vim'  
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} 
Plug 'dense-analysis/ale'  

"others
Plug 'neoclide/jsonc.vim'

call plug#end()



