return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git",
    "windwp/nvim-autopairs",
    { "L3MON4D3/LuaSnip", version = "v1.*" },
    "saadparwaiz1/cmp_luasnip",
    --Meter mis propios pluggins
    --https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
  },
  event = "VeryLazy",
  main = "plugin_configs.completition-config",
  config = true
}
