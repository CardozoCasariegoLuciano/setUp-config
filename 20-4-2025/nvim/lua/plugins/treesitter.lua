return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "rest-nvim/tree-sitter-http"
    },
    build = ":TSUpdate",
    event = "VeryLazy",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "bash",
            "dockerfile",
            "diff",
            "gitignore",
            "css",
            "gomod",
            "html",
            "javascript",
            "json",
            "lua",
            "luadoc",
            "markdown",
            "markdown_inline",
            "typescript",
            "regex",
            "python",
            "haskell",
            "vim",
            "yaml",
            "http"
        },
        autotag = {
            enable = true,
        },
        -- Install parsers sync
        sync_install = false,
        auto_install = true,
        indent = { enable = true },
        highlight = { enable = true, },
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@conditional.outer",
                    ["ic"] = "@conditional.inner",
                    ["al"] = "@loop.outer",
                    ["il"] = "@loop.inner",
                }
            }
        }
    }
}
