---@diagnostic disable: undefined-global
local cmd = vim.cmd

vim.g.mapleader = " "
vim.g.snippets = "luasnip"

local opt = vim.o

-- opt.mouse = ""
opt.number = true
opt.relativenumber = true
-- opt.conceallevel = 3
-- opt.hidden = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
-- opt.errorbells = false
opt.wrap = false
opt.swapfile = false
-- opt.undofile = true
-- opt.undodir = os.getenv "HOME" .. "/.cache/nvim/undodir"
-- opt.hlsearch = false
-- opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
-- opt.scrolloff = 4
-- opt.sidescrolloff = 4
-- opt.showmode = false
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
-- opt.autowrite = true
-- opt.list = true
-- opt.listchars = "tab:\\ ,trail:-"
-- opt.laststatus = 3
opt.cmdheight = 1
-- opt.updatetime = 50
-- opt.signcolumn = "yes"
-- opt.equalalways = false
-- opt.splitkeep = "screen"
-- opt.shortmess = "filnxtToOFWIcC"



cmd [[
  autocmd BufWritePre * :%s/\s\+$//e "Al guardar borra los espacios de mas al final de las lineas
  autocmd Bufenter * set fo-=c fo-=r fo-=o "para que la siguiente linea no se comente si la anterior lo esta
]]
