return {
    "liuchengxu/vim-which-key",
    config = function()
        vim.cmd[[nnoremap <silent> <leader> :WhichKey '<Space>'<CR>]]
    end
}
