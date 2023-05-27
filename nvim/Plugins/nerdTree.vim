"NerdTree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let NERDTreeQuitOnOpen=1
map <Leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<cr>

"Abrir el nerdTree existente (si lo hay)
"autocmd BufWinEnter * if getcmdwintype() == '' && &buftype != 'quickfix' | silent! NERDTreeMirror | endif

