local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end

local lspkind, lspkind = pcall(require, "lspkind")
if not lspkind then
    return
end

luasnip.filetype_extend("javascript", { "javascriptreact" })
luasnip.filetype_extend("javascript", { "html" })

-- load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<A-k>"] = cmp.mapping.select_prev_item(),
        ["<A-j>"] = cmp.mapping.select_next_item(),
        ["<A-b>"] = cmp.mapping.scroll_docs(4), --No se que hace
        ["<C-Space>"] = cmp.mapping.complete(), --Me muestra las opciones
        ["<A-e>"] = cmp.mapping.abort(),
        ["<A-l>"] = cmp.mapping.confirm({select = false}), --Me confima el completado
   }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    }),
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
        })
    }
})
