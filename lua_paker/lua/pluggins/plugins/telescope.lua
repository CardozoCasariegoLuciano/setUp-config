local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then
  return
end

---@diagnostic disable-next-line: undefined-global
local key = vim.keymap -- for keymaps

--Find Files
key.set('n', '<leader>ff', builtin.find_files, {}) --Find file by name
key.set('n', '<leader>fif', builtin.current_buffer_fuzzy_find, {}) --Find by word in the current buffer
key.set('n', '<leader>ft', builtin.live_grep, {}) --Find file by name or content
key.set('n', '<leader>fo', builtin.oldfiles, {}) --List opened files

--Vim or system features
key.set('n', '<leader>fb', builtin.buffers, {}) --Show all buffers
key.set('n', '<leader>fch', builtin.command_history, {}) --List command history
key.set('n', '<leader>fco', builtin.colorscheme, {}) --List of all themes
key.set('n', '<leader>fm', builtin.marks, {}) --ver si anda con el pluggin de los bookmarks
key.set('n', '<leader>fr', builtin.registers, {}) --List all registers and its data
key.set('n', '<leader>fqf', builtin.quickfix, {}) --List all quickFix
key.set('n', '<leader>fk', builtin.keymaps, {}) --Show the keymappings

--Git
key.set('n', '<leader>fgb', builtin.git_branches, {}) --Show all branches
key.set('n', '<leader>fgc', builtin.git_commits, {}) --Show all the commits
key.set('n', '<leader>fgs', builtin.git_status, {}) --Show the status
key.set('n', '<leader>fgt', builtin.git_stash, {}) --Show the status

--LSP
key.set('n', '<leader>gr', builtin.lsp_references, {})
key.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
key.set('n', '<leader>dws', builtin.lsp_dynamic_workspace_symbols, {})
key.set('n', '<leader>fd', builtin.diagnostics, {})
key.set('n', '<leader>gi', builtin.lsp_implementations, {})
key.set('n', '<leader>gd', builtin.lsp_definitions, {})
key.set('n', '<leader>td', builtin.lsp_type_definitions, {})


--Documentacion
-- https://github.com/nvim-telescope/telescope.nvim
