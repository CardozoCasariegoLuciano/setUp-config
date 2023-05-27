"Coc- formater
  autocmd BufNewFile,BufRead *.js,*.ts,*.tsx,*.jsx,*.css,*scss,*.html  call FormatJSFile()
  function FormatJSFile()
    nmap <Leader>p :CocCommand prettier.formatFile<CR>
  endfunction

  au FileType go nmap <leader>p <Plug>(go-fmt)
  au FileType java nmap <leader>p :CocCommand editor.action.formatDocument<CR>

