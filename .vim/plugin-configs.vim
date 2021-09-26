
"Pluggin de emmet:
let g:user_emmet_leader_key='<C-k>' 
let g:user_emmet_install_global = 0  
autocmd FileType html,css,javascript,javascript.jsx,typescriptreact EmmetInstall  

let g:user_emmet_settings = { 'javascript' : {  'extends' : 'jsx' } }




"Pluggin de ale
let g:ale_linters = {'go': ['gofmt', 'golint', 'go vet', 'gometalinter'], 'perl': ['perl','perlcritic'] } 



"Plgguin de airline 
let g:airline#extensions#tabline#enabled = 1 


"Plgguin de NerdTree
"let NERDTreeQuitOnOpen=1  


"Plgguin CoC
function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
	        \ pumvisible() ? "\<C-n>" :
	        \ <SID>check_back_space() ? "\<Tab>" :
	        \ coc#refresh()


inoremap  <expr> <CR>  pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


set complete-=t
set complete-=i
set shortmess+=c


 "ultisnips
let g:UltiSnipsExpandTrigger="<F5>"

"EasyMotion
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase=1


