"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>


"desmarca las palabras buscadas
 nnoremap // :noh<return><Esc>
 nnoremap <Esc><Esc> :noh<return><Esc>

 "para hacer espacios o saltos de linea en el modo normal
 nnoremap ss i<Space><Esc>
 nnoremap aa o<Esc>

"configurar teclas
  imap jj <Esc>
  imap jk <Esc>
  nmap <C-c> <Esc>
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
  map <F12> :vert terminal<CR>
  set termwinsize=0x80

" TAB in general mode will move to text buffer
 nnoremap <TAB> :bnext<CR>
" " SHIFT-TAB will go back
 nnoremap <S-TAB> :bprevious<CR>

 "deleting all buffers except the current one
 command CloseAllBuffers silent! execute "%bd|e#|bd#"
 nnoremap <leader>cab :CloseAllBuffers<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

"remaping
nnoremap gF <C-w>gf

"Runing tests

autocmd BufNewFile,BufRead *.tsx,*js,*jsx,*ts  call SetTestKeys()

function GetCoutes ()
  let testPattern = matchstr(getline('.'), '"\zs[^"]\+\ze"')
  echo testPattern
endfunction

function SetTestKeys()
  nmap <silent> Ts :vert terminal npm run test -- -u NODE_ENV="test" --watchAll=false <CR>
  nmap <silent> Tf :vert terminal npm run test % -- -u NODE_ENV="test" --watchAll=false<CR>
  nmap <silent> Tt :vert terminal npm run test -- -u NODE_ENV="test" --watchAll=false -t "
  nmap <silent> Trs :! npm run test -- --verbose --watchAll=false<CR>
  nmap <silent> Trf :! npm run test % -- --watchAll=false<CR>
endfunction


"Pluggins

  "NERDTreeFind
  nmap <Leader>nt :NERDTreeToggle<CR>

  "fzf
  map <Leader>Fi :Files<CR>
  map <Leader>Fg :GFiles<CR>
  map  <Leader>Fa :Ag<CR>

  "easymotion
  nmap <Leader>s <Plug>(easymotion-s2)

  "zeavim
  nmap <leader>z <Plug>ZVKeyDocset
