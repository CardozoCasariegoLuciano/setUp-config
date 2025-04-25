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
