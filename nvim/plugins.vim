call plug#begin('~/.local/share/nvim/plugged')

"syntax
Plug 'sheerun/vim-polyglot'

"Visual
Plug 'yggdroot/indentLine'

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Themes
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'

"Typing
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'

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

"Others
Plug 'tpope/vim-eunuch' "Comandos de linux

"IDE
Plug 'junegunn/fzf'   
Plug 'junegunn/fzf.vim'  
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'  
Plug 'ap/vim-css-color'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"others
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/goyo.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'

call plug#end()
