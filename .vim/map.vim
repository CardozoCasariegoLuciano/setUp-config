"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>


"desmarca las palabras buscadas
 nnoremap // :noh<return><Esc>
 nnoremap <Esc><Esc> :noh<return><Esc>

 "para hacer espacios o saltos de linea en el modo normal
 nnoremap ss i<Space><Esc>
 nnoremap aa i<Cr><Esc>


"configurar teclas
  imap jj <Esc>
  imap jk <Esc>
  nmap <Leader>w :w<CR>
  nmap <Leader>qq :q<CR>
  nmap <Leader>qa :qall<CR>
  nnoremap <F2> :setlocal spell! spelllang=es<CR>
  nnoremap <F4> :setlocal spell! spelllang=en<CR>

"navegando con gias
  inoremap ,, <Esc>/<++><CR>"_c4l
  vnoremap ,, <Esc>/<++><CR>"_c4l
  nnoremap ,, <Esc>/<++><CR>"_c4l

"tamaño divisiones
  nnoremap <Leader>> 15<C-w>>
  nnoremap <Leader>< 15<C-w><

"Tabs
  map <Leader>h :tabprevious<CR>
  map <Leader>l :tabnext<CR>
  nnoremap <Leader>ct :tabclose<CR>

"Buffers
  map <Leader>ob :Buffers<CR>
  map <Leader>bd :bd<CR>

"scroll
  nnoremap <C-c> 10<C-e>
  nnoremap <C-d> 10<C-y>

"terminal
  map <F12> :belowright terminal<CR>
  set termwinsize=13x0


" TAB in general mode will move to text buffer
 nnoremap <TAB> :bnext<CR>
" " SHIFT-TAB will go back
 nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv


"Pluggins

  "NERDTreeFind
  nmap <Leader>nt :NERDTreeFind<CR>

  "fzf
  map <Leader>fi :Files<CR>
  map <Leader>gf :GFiles<CR>
  map  <Leader>ag :Ag<CR>


  "easymotion
  nmap <Leader>s <Plug>(easymotion-s2)


  "zeavim
  nmap <leader>z <Plug>ZVKeyDocset
