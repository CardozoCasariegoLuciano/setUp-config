return {
    "wuelnerdotexe/vim-enfocado",
    lazy = false,
    priority = 1000,
    config = function()
        --Actualizar con el nombre del plugin
        vim.cmd(([[colorscheme enfocado]]))
    end,
}

--Themes
--Plug 'joshdick/onedark.vim'
--Plug 'arcticicestudio/nord-vim'
--Plug 'mhartington/oceanic-next'
--Plug 'drewtempelmeyer/palenight.vim'
--Plug 'dracula/vim', { 'as': 'dracula' }
--Plug 'kyoz/purify', { 'rtp': 'vim' }
--Plug 'gosukiwi/vim-atom-dark'
