"Pluggins
call plug#begin('~/.config/nvim/plugged')

"THEMES
Plug 'morhetz/gruvbox'
Plug 'HenryNewcomer/vim-theme-papaya'

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Typing
Plug 'tpope/vim-surround' 

"Tmux
Plug 'christoomey/vim-tmux-navigator' 

"Tree
Plug 'scrooloose/nerdtree' 

"AutoComplete
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'honza/vim-snippets'

"IDE
Plug 'junegunn/fzf'   
Plug 'junegunn/fzf.vim'  
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdcommenter'
Plug 'KabbAmine/zeavim.vim'  
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"others
Plug 'junegunn/goyo.vim'
Plug 'liuchengxu/vim-which-key'
"Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'

call plug#end()

colorscheme gruvbox
"colorscheme papaya
