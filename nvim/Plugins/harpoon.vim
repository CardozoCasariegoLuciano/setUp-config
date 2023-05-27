nmap <Leader>ml <CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>
nmap <Leader>ma <CMD>lua require("harpoon.mark").add_file()<CR>
nmap <Leader>mn <CMD>lua require("harpoon.ui").nav_next()<CR>
nmap <Leader>mp <CMD>lua require("harpoon.ui").nav_prev()<CR>

lua << END
  require('harpoon.mark').add_file()
END

