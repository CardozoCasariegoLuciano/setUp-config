"Pluggin de emmet:
"let g:user_emmet_leader_key='<C-k>' 
"let g:user_emmet_install_global = 0  
"autocmd FileType html,css,javascript,javascript.jsx,typescriptreact EmmetInstall  

"let g:user_emmet_settings = { 'javascript' : {  'extends' : 'jsx' } }


"Pluggin de ale
let g:ale_linters = {'go': ['gofmt', 'golint', 'go vet', 'gometalinter'], 'perl': ['perl','perlcritic'] } 


"Plgguin de airline 
let g:airline#extensions#tabline#enabled = 1 


"Plgguin de NerdTree
let NERDTreeQuitOnOpen=1  


"Plgguin CoC
so ~/.vim/plugin_CoC_config.vim
	

"Coc-Prettier
nmap <Leader>p :CocCommand prettier.formatFile<CR>

"Coc-Pyright
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'main.py']



	
"ultisnips
let g:UltiSnipsExpandTrigger="<F5>"
let g:UltiSnipsEditSplit="vertical"

"EasyMotion
nmap s <Plug>(easymotion-overwin-f2)
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


