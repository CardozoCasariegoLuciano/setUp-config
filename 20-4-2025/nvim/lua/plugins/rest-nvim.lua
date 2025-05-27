---@diagnostic disable: undefined-global
return {
    "rest-nvim/rest.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            table.insert(opts.ensure_installed, "http")
        end,
    },
    config = function()
        require("rest-nvim").setup({
            -- Opcional: Define un formato personalizado para archivos
            custom_files = {
                "*.http",
                "*.rest",
            },
            -- Configura el comportamiento de las peticiones
            jump_to_request = false, -- Evita saltar al resultado automáticamente
        })

        local key = vim.keymap                                   -- for keymaps
        key.set('n', '<Leader>xr', ":vertical Rest run<CR>", {}) --Find file by name
    end

}
