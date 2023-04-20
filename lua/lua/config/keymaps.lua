local o = vim.o --vim options
local wo = vim.wo -- values per windows
local bo = vim.bo -- values per buffers
local set  = vim.opt -- Generals options (Windows/Files)
local g = vim.g -- Globals values
local env = vim.env -- Environment variables
local cmd = vim.cmd -- for VimScript commands
local key = vim.keymap -- for keymaps
local api = vim.api -- API VIM


--Leader
g.mapleader = ' ' -- tecla lider, en este caso el espacio

--Salir del M.I
key.set('i', 'jk', '<ESC>', {noremap = true})
key.set('i', 'jj', '<ESC>', {noremap = true})

--Guarda y/o salir
key.set('n', '<Leader>w', ':w<CR>', {noremap = true})
key.set('n', '<Leader>qq', ':q<CR>', {noremap = true})
key.set('n', '<Leader>qa', ':qall<CR>', {noremap = true})

--Saltos de linea o espacios en M.N
key.set('n', 'Ss', 'i<Space><Esc>', {noremap = true})
key.set('n', 'Aa', 'o<Esc>', {noremap = true})
key.set('n', 'AA', 'i<CR><Esc>', {noremap = true})


--Desmarcar palabra buscada
key.set('n', '//', ':noh<return><Esc>', {noremap = true})
key.set('n', '<Esc>', ':noh<return><Esc>', {noremap = true})

--Tabs
key.set('n', '<Leader>h', ':tabprevious<CR>')
key.set('n', '<Leader>l', ':tabnext<CR>')
key.set('n', '<Leader>ct', ':tabclose<CR>')

--Cerrar buffers
key.set('n', '<Leader>bd', ':bd<CR>', {noremap = true})

--Cerrar todos los buffers menos el actual
cmd[[  command! CloseAllBuffers silent! execute "%bd|e#|bd#" ]]
key.set('n', '<Leader>cab', ':CloseAllBuffers<CR>', {noremap = true})

--Corrector ortográfico
key.set('n', '<Leader>Les', ':setlocal spell! spelllang=es<CR>', {noremap = true})
key.set('n', '<Leader>Len', ':setlocal spell! spelllang=en<CR>', {noremap = true})

--Tamaño de divisiones
key.set('n', '<Leader><LEFT>', '15<C-w>>', {noremap = true})
key.set('n', '<Leader><RIGHT>', '15<C-w><', {noremap = true})
key.set('n', '<Leader><UP>', '5<C-w>+', {noremap = true})
key.set('n', '<Leader><DOWN>', '5<C-w>-', {noremap = true})

-- Move lines up and down
cmd[[nnoremap <C-A-j> :m .+1<CR>== ]]
cmd[[nnoremap <C-A-k> :m .-2<CR>== ]]

cmd[[inoremap <C-A-k> <Esc>:m .-2<CR>==gi ]]
cmd[[inoremap <C-A-j> <Esc>:m .+1<CR>==gi ]]

cmd[[vnoremap <C-A-j> :m '>+1<CR>gv=gv ]]
cmd[[vnoremap <C-A-k> :m '<-2<CR>gv=gv ]]

--Navegar entre buffers
key.set('n', '<TAB>', ':bnext<CR>', {noremap = true})
key.set('n', '<S-TAB>', ':bprevious<CR>', {noremap = true})

--Scroll
key.set('n', '<C-c>', '10<C-e>', {noremap = true})
key.set('n', '<C-d>', '10<C-y>', {noremap = true})

--Center de screnn when go netx finded
key.set('n', 'n', 'nzzzv', {noremap = true})
key.set('n', 'N', 'Nzzzv', {noremap = true})

--Replace method
key.set('n', '<Leader>ñ', ':%s/<C-r><C-w>/<C-r><C-w>/gc', {noremap = true})

--Mejorar el tabulado
key.set('v', '<', '<gv', {noremap = true})
key.set('v', '>', '>gv', {noremap = true})

--Abrir en una nueva ventana
key.set('n', 'gF', '<C-w>gf', {noremap = true})

--Genera puntos de corte para poder hacer el undo
key.set('i', ',', ',<c-g>U', {noremap = true})

-- join lines focus
key.set("n", "J", "mzJ`z")

-- symbols to add undo points
local symbols = { ",", ".", "!", "?", "$", ">", "<" }
for _, symbol in pairs(symbols) do
	key.set("i", symbol, symbol .. "<c-g>u")
end

-- quick env file edit
key.set("n", "<leader>ee", ":vsp .env<CR>")

--Vim diagnostics
vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_next, {})
vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev, {})

vim.diagnostic.config({
	virtual_text = false,
})

-- Esto lo tengo que ver mejor, quiza ya me lo da un pluggin
--Cambiar nombre a un archivo
--function! RenameFile()
--  let old_name = expand('%')
--  let new_name = input('New file name: ', expand('%'), 'file')
--  if new_name != '' && new_name != old_name
--      exec ':saveas ' . new_name
--      exec ':silent !rm ' .old_name
--      redraw!
--  endif
--endfunction
--nmap <Leader>Rf :call RenameFile()<CR>
