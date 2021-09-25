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
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"Tmux
Plug 'christoomey/vim-tmux-navigator' 

"AutoComplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/ultisnips' 


"IDE
Plug 'junegunn/fzf'   ", { 'do': { -> fzf#install()  }  } 
Plug 'junegunn/fzf.vim'  
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter' 
Plug 'mattn/emmet-vim' 
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'KabbAmine/zeavim.vim'  
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'} 
Plug 'dense-analysis/ale'  


"Plug 'SirVer/ultisnips' "smippets para react
"Plug 'mlaursen/vim-react-snippets'
call plug#end()



