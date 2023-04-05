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


--"Desmarcar palabra buscada
key.set('n', '//', ':noh<return><Esc>', {noremap = true}) 
key.set('n', '<Esc>', ':noh<return><Esc>', {noremap = true}) 

--"Tabs
key.set('n', '<Leader>h', ':tabprevious<CR>') 
key.set('n', '<Leader>l', ':tabnext<CR>') 
key.set('n', '<Leader>ct', ':tabclose<CR>') 

--"Cerrar buffers
--map <Leader>bd :bd<CR>
--"Cerrar todos los buffers menos el actual
--command CloseAllBuffers silent! execute "%bd|e#|bd#"
--nnoremap <Leader>cab :CloseAllBuffers<CR>
--
--"Corrector ortografico
--nnoremap <Leader>Les :setlocal spell! spelllang=es<CR>
--nnoremap <Leader>Len :setlocal spell! spelllang=en<CR>
--
--"Tamaño de divisiones
--nnoremap <Leader><LEFT> 15<C-w>>
--nnoremap <Leader><RIGHT> 15<C-w><
--nnoremap <Leader><UP> 5<C-w>+
--nnoremap <Leader><DOWN> 5<C-w>-
--
--" Move lines up and down
--nnoremap <C-A-j> :m .+1<CR>==
--nnoremap <C-A-k> :m .-2<CR>==
--inoremap <C-A-j> <Esc>:m .+1<CR>==gi
--inoremap <C-A-k> <Esc>:m .-2<CR>==gi
--vnoremap <C-A-j> :m '>+1<CR>gv=gv
--vnoremap <C-A-k> :m '<-2<CR>gv=gv
--
--"Navegar entre buffers
--nnoremap <TAB> :bnext<CR>
--nnoremap <S-TAB> :bprevious<CR>
--
--"Scroll
--nnoremap <C-c> 10<C-e>
--nnoremap <C-d> 10<C-y>
--
--"Replace method
--nmap <Leader>ñ :%s/<C-r><C-w>/<C-r><C-w>/gc
--
--"Mejorar el tabulado
--vnoremap < <gv
--vnoremap > >gv
--
--"Abrir en una nueva ventana
--nnoremap gF <C-w>gf
--
--
--"Cambiar nombre a un archivo
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
