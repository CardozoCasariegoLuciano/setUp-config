let mapleader = " " 


"desmarca las palabras buscadas
 nnoremap // :noh<return><Esc>
 nnoremap <Esc><Esc> :noh<return><Esc>

 "para hacer espacios o saltos de linea en el modo normal
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

"tamaño divisiones
  nnoremap <Leader><LEFT> 15<C-w>>
  nnoremap <Leader><RIGHT> 15<C-w><
  nnoremap <Leader><UP> 5<C-w>+
  nnoremap <Leader><DOWN> 5<C-w>-

"Tabs
  map <Leader>h :tabprevious<CR>
  map <Leader>l :tabnext<CR>
  nnoremap <Leader>ct :tabclose<CR>

"Cerrar Buffers
  map <Leader>bd :bd<CR>

"navegar entre buffers
 nnoremap <TAB> :bnext<CR>
 nnoremap <S-TAB> :bprevious<CR>


"scroll
  nnoremap <C-c> 10<C-e>
  nnoremap <C-d> 10<C-y>

"terminal
  map <F12> :vert terminal<CR>
  set termwinsize=0x80


"Cerrar todos los buffers menos el actual
 command CloseAllBuffers silent! execute "%bd|e#|bd#"
 nnoremap <leader>cab :CloseAllBuffers<CR>

"Mejor tabulado
vnoremap < <gv
vnoremap > >gv

"Abrir en una nueva pestaña
nnoremap gF <C-w>gf

"Runing tests
autocmd BufNewFile,BufRead *.tsx,*js,*jsx,*ts  call SetTestKeys()

function GetCoutes ()
  let testPattern = matchstr(getline('.'), '"\zs[^"]\+\ze"')
  echo testPattern
endfunction

function SetTestKeys()
  nmap <silent> Ts :vert terminal npm run test -- -u NODE_ENV=test --watchAll=false <CR>
  nmap <silent> Tf :vert terminal npm run test % -- -u NODE_ENV="test" --watchAll=false<CR>
  nmap <silent> Tt :vert terminal npm run test -- -u NODE_ENV="test" --watchAll=false -t "
  nmap <silent> Trs :! npm run test -- --verbose --watchAll=false<CR>
  nmap <silent> Trf :! npm run test % -- --watchAll=false<CR>
endfunction


"executig programs
autocmd BufNewFile,BufRead *.py  call RunPythonFile()
autocmd BufNewFile,BufRead *.js  call RunJavaScriptFile()


function RunPythonFile()
  nmap <Leader>r :vert terminal python3 %<CR>
endfunction

function RunJavaScriptFile()
  nmap <Leader>r :vert terminal node %<CR>
endfunction

