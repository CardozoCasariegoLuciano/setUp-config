require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
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
  autotag = {
    enable = true,
  },
  -- Install parsers sync
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
