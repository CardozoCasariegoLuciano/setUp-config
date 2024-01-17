local o   = vim.o      --vim options
local wo  = vim.wo     -- values per windows
local bo  = vim.bo     -- values per buffers
local set = vim.opt    -- Generals options (Windows/Files)
local g   = vim.g      -- Globals values
local env = vim.env    -- Environment variables
local cmd = vim.cmd    -- for VimScript commands
local key = vim.keymap -- for keymaps
local api = vim.api    -- API VIM


o.relativenumber = true
o.number = true
o.scrolloff = 10
o.splitbelow = true
o.splitright = true
o.cursorline = true
o.foldlevel = 99
o.foldmethod = "indent"
o.clipboard = "unnamedplus"
o.wrap = false
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.pumheight = 10
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true
o.showtabline = 2
o.foldcolumn = "2"
--set noshowmode

cmd [[
  autocmd BufWritePre * :%s/\s\+$//e "Al guardar borra los espacios de mas al final de las lineas
  autocmd Bufenter * set fo-=c fo-=r fo-=o "para que la siguiente linea no se comente si la anterior lo esta
]]
--highlight Search cterm=reverse ctermbg=White ctermfg=Red guibg=Red guifg=Red

-- No se si hacen falta en Lua, lo dejo comentado por las dudas
--filetype on
--filetype plugin on
--filetype plugin indent on
--filetype indent on
