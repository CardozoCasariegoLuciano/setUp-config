"Tecla líder
let mapleader = " "

"espacios o saltos de linea en el M.N
nnoremap ss i<Space><Esc>
nnoremap aa o<Esc>
nnoremap aA i<CR><Esc>

"salir de M.I
imap jj <Esc>
imap jk <Esc>
imap <C-c> <Esc>

"Guardar o salir
nmap <Leader>w :w<CR>
nmap <Leader>qq :q<CR>
nmap <Leader>qa :qall<CR>

"corrector ortográfico
nnoremap <F2> :setlocal spell! spelllang=es<CR>
nnoremap <F4> :setlocal spell! spelllang=en<CR>

"Tamaño de las ventanas
nnoremap <Leader><LEFT> 15<C-w><
nnoremap <Leader><RIGHT> 15<C-w>>
nnoremap <Leader><UP> 5<C-w>+
nnoremap <Leader><DOWN> 5<C-w>-

"pestañas
map <Leader>h :tabprevious<CR>
map <Leader>l :tabnext<CR>
nnoremap <Leader>ct :tabclose<CR>

"Desmarcar palabras buscadas
nnoremap <Esc><Esc> :noh<return><Esc>

"scroll
nnoremap <C-c> 10<C-e>
nnoremap <C-d> 10<C-y>

"eliminar todos los buffers menos el actual
command! CloseAllBuffers silent! execute "%bd|e#|bd#"
nnoremap <leader>cab :CloseAllBuffers<CR>

"mejor tabulado
vnoremap < <gv
vnoremap > >gv

"open file in a new tab
noremap gF <C-w>gf

"terminal
nnoremap <F12> :sp<bar>term<cr><c-w>J:resize15<cr>
