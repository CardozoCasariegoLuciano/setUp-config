return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
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
			"java",
			"go",
			"gomod",
			"html",
			"javascript",
			"json",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"php",
			"phpdoc",
			"sql",
			"typescript",
			"regex",
			"vim",
			"yaml",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ad"] = "@conditional.outer",
					["id"] = "@conditional.inner",
					["al"] = "@loop.outer",
					["il"] = "@loop.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
				}
			}
		},
	},
}
