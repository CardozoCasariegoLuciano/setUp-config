
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>


"desmarca las palabras buscadas
 nnoremap // :noh<return><Esc>

 "para hacer espacios o saltos de linea en el modo normal
 nnoremap ss i<Space><Esc>
 nnoremap aa i<Cr><Esc>


"configurar teclas
  imap jj <Esc>
  nmap <Leader>w :w<CR>
  nmap <Leader>q :q<CR>
  nnoremap <F2> :setlocal spell! spelllang=es<CR>
  nnoremap <F4> :setlocal spell! spelllang=en<CR>

"navegnado con gias
  inoremap ,, <Esc>/<++><CR>"_c4l
  vnoremap ,, <Esc>/<++><CR>"_c4l
  nnoremap ,, <Esc>/<++><CR>"_c4l

"tamaño divisiones
nnoremap <Leader>> 25<C-w>>
nnoremap <Leader>< 25<C-w><

"Tabs
map <Leader>h :tabprevious<CR>
map <Leader>l :tabnext<CR>

"Buffers
map <Leader>ob :Buffers<CR>

"scroll
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>


"NERDTreeFind
nmap <Leader>nt :NERDTreeFind<CR>

"fzf
map <Leader>p :Files<CR>

"easymotion
nmap <Leader>>s <Plug>(easymotion-s2)
