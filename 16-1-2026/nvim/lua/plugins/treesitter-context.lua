---@diagnostic disable: undefined-global

-- tree-sitter-context.lua
return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = { "nvim-treesitter/nvim-treesitter", branch = "main" },
    init = function()
        vim.g.no_plugin_maps = true
    end,
    config = function()
        require("nvim-treesitter-textobjects").setup {
            select = {
                -- Automatically jump forward to textobj, similar to targets.vim
                lookahead = true,
                -- You can choose the select mode (default is charwise 'v')

                selection_modes = {
                    ['@parameter.outer'] = 'v', -- charwise
                    ['@function.outer'] = 'V',  -- linewise
                    ['@class.outer'] = '<c-v>', -- blockwise
                },
                include_surrounding_whitespace = false,
            },
            move = {
                -- whether to set jumps in the jumplist
                set_jumps = true,
            },
        }

        -- Selects
        local select = require "nvim-treesitter-textobjects.select"
        vim.keymap.set({ "x", "o" }, "af", function()
            select.select_textobject("@function.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "if", function()
            select.select_textobject("@function.inner", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "ac", function()
            select.select_textobject("@class.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "ic", function()
            select.select_textobject("@class.inner", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "il", function()
            select.select_textobject("@loop.inner", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "al", function()
            select.select_textobject("@loop.outer", "textobjects")
        end)
        -- You can also use captures from other query groups like `locals.scm`
        vim.keymap.set({ "x", "o" }, "as", function()
            select.select_textobject("@local.scope", "locals")
        end)

    end,
}
