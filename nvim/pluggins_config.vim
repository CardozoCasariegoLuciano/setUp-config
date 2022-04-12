"Pluggin Coc
so ~/.config/nvim/coc_config.vim


"Plgguin de airline 
  let g:airline#extensions#tabline#enabled = 1 
  let g:airline#extensions#hunks#enabled=0
  let g:airline#extensions#branch#enabled=1


"Plgguin de NerdTree
  let NERDTreeQuitOnOpen=1  
  nmap <Leader>nt :NERDTreeToggle<CR>


"EasyMotion
  nmap <Leader>s <Plug>(easymotion-s2)
  let g:EasyMotion_smartcase=1

"Goyo
  nmap <Leader>g :Goyo<CR>
  nmap <Leader>G :Goyo!<CR>


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


"AirLine Themes
  let g:airline_theme='deus'
  "let g:airline_theme='tomorrow'
  "let g:airline_theme=' solarized_flood '

"Dashboard
let g:dashboard_default_executive ='fzf'
