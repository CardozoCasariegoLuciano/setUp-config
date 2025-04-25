---@diagnostic disable: undefined-global
return {
    "nvim-telescope/telescope.nvim",
    event = 'VeryLazy',
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    opts = {
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case",
            }
        }
    },
    config = function(opts)
        require('telescope').setup(opts)
        require('telescope').load_extension("fzf")
        local telescope = require('telescope.builtin')


        local key = vim.keymap                                               -- for keymaps
        --Find Files
        key.set('n', '<Leader>ff', telescope.find_files, {})                 --Find file by name
        key.set('n', '<leader>fif', telescope.current_buffer_fuzzy_find, {}) --Find by word in the current buffer
        key.set('n', '<leader>ft', telescope.live_grep, {})                  --Find file by name or content
        key.set('n', '<leader>fo', telescope.oldfiles, {})                   --List opened files

        --Vim or system features
        key.set('n', '<leader>fb', telescope.buffers, {})          --Show all buffers
        key.set('n', '<leader>fch', telescope.command_history, {}) --List command history
        key.set('n', '<leader>fco', telescope.colorscheme, {})     --List of all themes
        key.set('n', '<leader>fm', telescope.marks, {})            --ver si anda con el pluggin de los bookmarks
        key.set('n', '<leader>fr', telescope.registers, {})        --List all registers and its data
        key.set('n', '<leader>fqf', telescope.quickfix, {})        --List all quickFix
        key.set('n', '<leader>fk', telescope.keymaps, {})          --Show the keymappings

        --Git
        key.set('n', '<leader>fgb', telescope.git_branches, {}) --Show all branches
        key.set('n', '<leader>fgc', telescope.git_commits, {})  --Show all the commits
        key.set('n', '<leader>fgs', telescope.git_status, {})   --Show the status
        key.set('n', '<leader>fgt', telescope.git_stash, {})    --Show the status
        key.set('n', '<leader>fgd', telescope.git_bcommits, {}) --Show the commits in the current buffer

        --LSP
        key.set('n', '<leader>gr', telescope.lsp_references, {})
        key.set('n', '<leader>ds', telescope.lsp_document_symbols, {})
        key.set('n', '<leader>dws', telescope.lsp_dynamic_workspace_symbols, {})
        key.set('n', '<leader>fd', telescope.diagnostics, {})
        key.set('n', '<leader>gi', telescope.lsp_implementations, {})
        key.set('n', '<leader>gd', telescope.lsp_definitions, {})
        key.set('n', '<leader>td', telescope.lsp_type_definitions, {})


        --Documentacion
        -- https://github.com/nvim-telescope/telescope.nvim
    end
}
