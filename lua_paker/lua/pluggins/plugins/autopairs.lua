local ok, npairs = pcall(require, "nvim-autopairs")
if not ok then
  return
end

local Rule = require("nvim-autopairs.rule")

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {"string"}, -- it will not add a pair on treesitter node
        javascript = {"template_string"},
        java = false, -- don't check treesitter on java
    }
})
