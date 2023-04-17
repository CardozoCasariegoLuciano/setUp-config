local key = vim.keymap -- for keymaps

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

--keymapping
key.set('n', '<Leader>nt', ':NvimTreeToggle<CR>', {noremap = true})
key.set('n', '<Leader>nf', ':NvimTreeFindFileToggle<CR>', {noremap = true})
