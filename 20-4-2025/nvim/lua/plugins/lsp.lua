---@diagnostic disable: undefined-global

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
    },
    config = function()
        vim.keymap.set('n', '<Leader>ne', vim.diagnostic.goto_next)
        vim.keymap.set('n', '<Leader>pe', vim.diagnostic.goto_prev)

        local on_attach = function(_, bufnr)
            vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
            local opts = { buffer = bufnr }

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
            vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set({ 'n', 'v' }, '<Space>ca', vim.lsp.buf.code_action, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', '<space>p', function()
                vim.lsp.buf.format { async = true }
            end, opts)
        end

        require("lspconfig").lua_ls.setup({
            on_attach = on_attach,
            settings = {
                Lua = {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                }
            }
        })
    end

}
