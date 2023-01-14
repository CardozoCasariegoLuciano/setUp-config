"NerdTree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
let NERDTreeQuitOnOpen=1
map <Leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<cr>

"Abrir el nerdTree existente (si lo hay)
autocmd BufWinEnter * if getcmdwintype() == '' && &buftype != 'quickfix' | silent! NERDTreeMirror | endif


"AirLine
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline#extensions#hunk#enabled=0
let g:airline#extensions#branch#enabled=1

"IndentLine
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

"Coc
so ~/.config/nvim/coc_pluggin.vim


"Coc- formater
  autocmd BufNewFile,BufRead *.js,*.ts,*.tsx,*.jsx,*.css,*scss,*.html  call FormatJSFile()
  function FormatJSFile()
    nmap <Leader>p :CocCommand prettier.formatFile<CR>
  endfunction

  au FileType go nmap <leader>p <Plug>(go-fmt)
  "nmap <Leader>p :CocCommand editor.action.formatDocument<CR>


"Ultisnips
let g:UltiSnipsExpandTrigger="<F5>"
let g:UltiSnipsEditSplit="Vertical"

"CloseTag
" These are the file extensions where this plugin is enabled.
  let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.tsx,*.jsx,*.js,*.ts"
  let g:closetag_xhtml_filenames = "*.xhtml,*.jsx,*.tsx,*.js,*.ts"
  let g:closetag_filetypes = "html,xhtml,phtml"
  let g:closetag_xhtml_filetypes = "xhtml,javascript.jsx,jsx,javascript"
  let g:closetag_emptyTags_caseSensitive = 1
  let g:closetag_shortcut = '>'
  let g:closetag_regions = {
  \ "typescript.tsx": "jsxRegion,tsxRegion",
  \ "javascript.jsx": "jsxRegion",
  \ "typescriptreact": "jsxRegion,tsxRegion",
  \ "javascriptreact": "jsxRegion",
  \ }

"Fzf
map <Leader>Fi :Files<CR>
map <Leader>Fg :GFiles<CR>
map <Leader>Fa :Ag<CR>
map <Leader>ob :Buffers<CR>


"Pluggin de ale
let g:ale_sign_error = '●'
let g:ale_sign_warning = '!'
let g:ale_disable_lsp = 1 
let g:ale_linters = {'javascript': ['eslint']}

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase=1

"vim-which-key
nnoremap <silent> <leader>' :WhichKey '<Space>'<CR>

"Goyo
nmap <Leader>g :Goyo<CR>
let g:goyo_width=100
let g:goyo_height=100


"GitGutter
set signcolumn=yes
nmap <Leader>Hp <Plug>(GitGutterPreviewHunk)
nmap <Leader>Hs <Plug>(GitGutterStageHunk)
nmap <Leader>Hu <Plug>(GitGutterUndoHunk)

"Git blame
nnoremap <Leader>B :<C-u>call gitblame#echo()<CR>
