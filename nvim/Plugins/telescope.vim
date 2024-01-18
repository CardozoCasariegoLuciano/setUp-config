"Find Files

"Find file by name
nnoremap <leader>ff <cmd>Telescope find_files<cr>
"Find file by name "Find by word in the current buffer
nnoremap <leader>fif <cmd>Telescope current_buffer_fuzzy_find<cr>
"Find file by name or content
nnoremap <leader>ft <cmd>Telescope live_grep<cr>
"List old files
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>

"Find plugins
nnoremap <leader>fp <cmd>lua require('telescope.builtin').find_files({cwd = "~/.config/nvim/Plugins"})<cr>

"Vim or system features
"Show all buffers
nnoremap <leader>fb <cmd>Telescope buffers<cr>
"List command history
nnoremap <leader>fch <cmd>Telescope command_history<cr>
"List of all themes
nnoremap <leader>fco <cmd>Telescope colorscheme<cr>
"List marks
nnoremap <leader>fm <cmd>Telescope marks<cr>
 "List all registers and its data
nnoremap <leader>fr <cmd>Telescope registers<cr>
"Show the keymappings
nnoremap <leader>fk <cmd>Telescope keymaps<cr>

"--Git
"Show all branches
nnoremap <leader>fgb <cmd>Telescope git_branches<cr>
"Show all commits
nnoremap <leader>fgc <cmd>Telescope git_commits<cr>
"Show commits of the current bufer
nnoremap <leader>fgo <cmd>Telescope git_bcommits<cr>
"Show the status
nnoremap <leader>fgs <cmd>Telescope git_status<cr>
"Show the stash area
nnoremap <leader>fgt <cmd>Telescope git_stash<cr>
