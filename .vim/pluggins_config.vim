"Pluggin de ale
let g:ale_sign_error = '●'
let g:ale_sign_warning = '!'
let g:ale_disable_lsp = 1 
let g:ale_linters = {'javascript': ['eslint']}


"Plgguin de airline 
  let g:airline#extensions#tabline#enabled = 1 
  let g:airline#extensions#hunks#enabled=0
  let g:airline#extensions#branch#enabled=1


"Plgguin de NerdTree
  let NERDTreeQuitOnOpen=1  
  nmap <Leader>nt :NERDTreeToggle<CR>
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


"Plgguin CoC
  so ~/.vim/coc_configuration.vim
	

"Coc- formater
  autocmd FileType python,blade call FormatPythonFile()
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


"Vim-rooter
  let g:rooter_patterns = ['.git', 'package.json' ,'Makefile', '*.sln', 'build/env.sh', "Pipfile", "pyrightconfig.json"]


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

  nmap <Leader>Hp <Plug>(GitGutterPreviewHunk)
  nmap <Leader>Hs <Plug>(GitGutterStageHunk)
  nmap <Leader>Hu <Plug>(GitGutterUndoHunk)


"Vim-php-cs-fixer
  let g:php_cs_fixer_path = "~/.config/composer/vendor/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar

  let g:php_cs_fixer_php_path = "php"               " Path to PHP
  let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
  let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
  let g:php_cs_fixer_verbose = 0                    "Return the output of command if 1, else an inline information.
  nnoremap <silent><leader>p :call PhpCsFixerFixFile()<CR>

"VimSpector

let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>dd :call vimspector#Launch()<CR>
nmap <Leader>dx :vimspectorReset<CR>
nmap <Leader>de :vimspectorEval
nmap <Leader>dw :vimspectorWatch
nmap <Leader>do :vimspectorShowOutPut

nmap <Leader><F1> :call vimspector#StepOver()<CR>
nmap <Leader><F2> :call vimspector#StepInto()<CR>
nmap <Leader><F3> :call vimspector#StepOut()<CR>
autocmd FileType java nmap <Leader>dd :CocCommand java.debug.vimspector.start<CR>

"java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=5005,suspend=y <main-file>
