
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
  nmap <Leader>qq :q<CR>
  nmap <Leader>qa :qall<CR>
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
  nnoremap <Leader>ct :tabclose<CR>

"Buffers
  map <Leader>ob :Buffers<CR>
  nnoremap <Leader>cb :bd<CR>

"scroll
  nnoremap <C-j> 10<C-e>
  nnoremap <C-k> 10<C-y>

"terminal
map <F12> :belowright terminal<CR>

"Pluggins

  "NERDTreeFind
  nmap <Leader>nt :NERDTreeFind<CR>

  "fzf
  map <Leader>p :Files<CR>
map  <Leader>ag :Ag<CR>
  "easymotion
  nmap <Leader>s <Plug>(easymotion-s2)


