"Find Files
nnoremap <leader>ff <cmd>Telescope find_files<cr>   "Find file by name
nnoremap <leader>fif <cmd>Telescope current_buffer_fuzzy_find<cr>   "Find file by name "Find by word in the current buffer
nnoremap <leader>ft <cmd>Telescope live_grep<cr> "Find file by name or content
nnoremap <leader>fo <cmd>Telescope oldfiles<cr> "List opened files

"Vim or system features
nnoremap <leader>fb <cmd>Telescope buffers<cr> "Show all buffers
nnoremap <leader>fch <cmd>Telescope command_history<cr> "List command history
nnoremap <leader>fco <cmd>Telescope colorscheme<cr> "List of all themes
nnoremap <leader>fm <cmd>Telescope marks<cr> "ver si anda con el pluggin de los bookmarks
nnoremap <leader>fr <cmd>Telescope registers<cr> "List all registers and its data
nnoremap <leader>fqf <cmd>Telescope quickfix<cr> "List all quickfix
nnoremap <leader>fk <cmd>Telescope keymaps<cr> "Show the keymappings

"--Git
nnoremap <leader>fgb <cmd>Telescope git_branches<cr> "Show all branches
nnoremap <leader>fgc <cmd>Telescope git_commits<cr> "Show all commits
nnoremap <leader>fgs <cmd>Telescope git_status<cr> "Show the status
nnoremap <leader>fgt <cmd>Telescope git_stash<cr> "Show the stash area
