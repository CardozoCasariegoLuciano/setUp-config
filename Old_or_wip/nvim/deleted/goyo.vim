" Plug 'junegunn/goyo.vim' "Full size window <Leader>gg
"Goyo
"nmap <Leader>gg :Goyo<CR>
"let g:goyo_width = '80%'    " Establece el ancho de la ventana a un 80% del tamaño de la pantalla
"let g:goyo_height = '80%'   " Establece la altura de la ventana a un 80% del tamaño de la pantalla
"
"function! s:goyo_enter()
"  if executable('tmux') && strlen($TMUX)
"    silent !tmux set status off
"    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
"  endif
"  set showcmd
"  set scrolloff=5
"  set  nu rnu
"  set winwidth=400
"  colorscheme nord
"endfunction
"
"function! s:goyo_leave()
"  if executable('tmux') && strlen($TMUX)
"    silent !tmux set status on
"    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
"  endif
"  set showcmd
"  set scrolloff=5
"  set winwidth=40
"  colorscheme palenight
"endfunction
"
"autocmd! User GoyoEnter nested call <SID>goyo_enter()
"autocmd! User GoyoLeave nested call <SID>goyo_leave()
"
