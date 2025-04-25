return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },
  config = function()
    --Show errors and navigate them
    vim.keymap.set('n', '<space>ev', vim.diagnostic.open_float)
    vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_next, {})
    vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev, {})
    vim.keymap.set('n', '<space>el', vim.diagnostic.setloclist)

    local on_attach = function(_, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

      local opts = { buffer = bufnr }

      --Go to
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

      --hovers
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

      --Actions
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

      --Formateo
      vim.keymap.set('n', '<space>f', function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end

    require("neodev").setup()
    local lspconfig = require("lspconfig")

    lspconfig.angularls.setup({})
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdPart = false }
        }
      }
    })

    --TODO: aca agrego otros LSP
  end
}
