if (empty($TMUX))
  if (has("nvim"))
    ""For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  ""For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  ""Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  "" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


if has('termguicolors')
  set termguicolors
endif

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif



"THEMES:
" one
" codedark
" nord
" OceanicNext
" palenight
" base16-atelier-cave

colorscheme base16-atelier-cave
set background=dark
set t_Co=256



"AirLine Themes
let g:airline_theme='deus'
"let g:airline_theme='tomorrow'
"let g:airline_theme=' solarized_flood '
