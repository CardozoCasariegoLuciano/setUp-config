---@diagnostic disable: undefined-global
return {
    "easymotion/vim-easymotion",
    config = function()
        vim.cmd[[nmap <Leader>s <Plug>(easymotion-s2)]]
        vim.cmd[[let g:EasyMotion_smartcase=1]]
    end
}
