"Leader
let mapleader = " "

"Salir del M.I
imap jj <Esc>
imap jk <Esc>

"Guarda y/o salir
nmap <Leader>w :w<CR>
nmap <Leader>qq :q<CR>
nmap <Leader>qa :qall<CR>

"Saltos de linea o espacios en M.N
nnoremap Ss i<Space><Esc>
nnoremap Aa o<Esc>
nnoremap AA i<CR><Esc>


"Desmarcar palabra buscada
nnoremap // :noh<return><Esc>
nnoremap <Esc> :noh<return><Esc>

"Tabs
map <Leader>h :tabprevious<CR>
map <Leader>l :tabnext<CR>
map <Leader>ct :tabclose<CR>

"Cerrar buffers
map <Leader>bd :bd<CR>
"Cerrar todos los buffers menos el actual
command CloseAllBuffers silent! execute "%bd|e#|bd#"
nnoremap <Leader>cab :CloseAllBuffers<CR>

"Corrector ortografico
nnoremap <Leader>Les :setlocal spell! spelllang=es<CR>
nnoremap <Leader>Len :setlocal spell! spelllang=en<CR>

"Tamaño de divisiones
nnoremap <Leader><LEFT> 15<C-w>>
nnoremap <Leader><RIGHT> 15<C-w><
nnoremap <Leader><UP> 5<C-w>+
nnoremap <Leader><DOWN> 5<C-w>-

" Move lines up and down
nnoremap <C-A-j> :m .+1<CR>==
nnoremap <C-A-k> :m .-2<CR>==
inoremap <C-A-j> <Esc>:m .+1<CR>==gi
inoremap <C-A-k> <Esc>:m .-2<CR>==gi
vnoremap <C-A-j> :m '>+1<CR>gv=gv
vnoremap <C-A-k> :m '<-2<CR>gv=gv

"Navegar entre buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

"Scroll
nnoremap <C-c> 10<C-e>
nnoremap <C-d> 10<C-y>

"Replace method
nmap <Leader>ñ :%s/<C-r><C-w>/<C-r><C-w>/gc

"Mejorar el tabulado
vnoremap < <gv
vnoremap > >gv

"Abrir en una nueva ventana
nnoremap gF <C-w>gf


"Cambiar nombre a un archivo
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
      exec ':saveas ' . new_name
      exec ':silent !rm ' .old_name
      redraw!
  endif
endfunction
nmap <Leader>Rf :call RenameFile()<CR>
