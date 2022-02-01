"Pluggin de ale
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_disable_lsp = 1 
let g:ale_linters = {'javascript': ['eslint']}

"Plgguin de airline 
  let g:airline#extensions#tabline#enabled = 1 


"Plgguin de NerdTree
  let NERDTreeQuitOnOpen=1  
  nmap <Leader>nt :NERDTreeToggle<CR>


"Plgguin CoC
  so ~/.vim/plugin_CoC_config.vim
	

"Coc- formater
  autocmd BufNewFile,BufRead *.py  call FormatPythonFile()
  autocmd BufNewFile,BufRead *.js,*.ts,*.tsx,*.jsx,*.css,*scss,*.html  call FormatJSFile()

  function FormatPythonFile()
    nmap <Leader>p :call CocAction('format')<CR>
  endfunction

  function FormatJSFile()
    nmap <Leader>p :CocCommand prettier.formatFile<CR>
  endfunction


"Coc-Pyright
  autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'main.py', 'app.py', 'src/']
	

"ultisnips
  let g:UltiSnipsExpandTrigger="<F5>"
  let g:UltiSnipsEditSplit="vertical"


"EasyMotion
  nmap <Leader>s <Plug>(easymotion-s2)
  let g:EasyMotion_smartcase=1


"CloseTag
" These are the file extensions where this plugin is enabled.
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

  let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
  let g:closetag_filetypes = 'html,xhtml,phtml'
  let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'
  let g:closetag_emptyTags_caseSensitive = 1
  let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
   \ 'typescriptreact': 'jsxRegion,tsxRegion',
  \ 'javascriptreact': 'jsxRegion',
  \ }


"Vim-Test
" Dejo de andar de la nada y no puedo encontrar la solucion LPM
" Es ALTO Plug
"Update: Es medio una cagada jajaja, anda cuando se le canta el culo

nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>
nmap <silent> tg :TestVisit<CR>

let g:test#javascript#jest#executable = 'npx jest --detectOpenHandles'
let g:test#javascript#runner = 'jest'


"Goyo
nmap <Leader>g :Goyo<CR>
nmap <Leader>G :Goyo!<CR>


"Vim-rooter
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh', "Pipfile", "pyrightconfig.json"]


"vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>


"Fzf
  map <Leader>Fi :Files<CR>
  map <Leader>Fg :GFiles<CR>
  map <Leader>Fa :Ag<CR>
  map <Leader>ob :Buffers<CR>


 "zeavim
  nmap <leader>z <Plug>ZVKeyDocset

"Gitgutter
set signcolumn=yes
