---@diagnostic disable: undefined-global
local ok, nvimtree = pcall(require, 'nvim-tree')
    if not ok then
    return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

nvimtree.setup()

--keymapping
vim.keymap.set('n', '<Leader>nt', ':NvimTreeToggle<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>nf', ':NvimTreeFindFileToggle<CR>', {noremap = true})
