---@diagnostic disable: undefined-global
local ok, gitsing = pcall(require, 'gitsigns')
    if not ok then
    return
end

gitsing.setup({
			numhl = true,
			max_file_length = 10000,
			current_line_blame = true,
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
				delay = 400,
				ignore_whitespace = false,
				virt_text_priority = 100,
			},
			current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
			sign_priority = 6,
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Actions
				map('n', '<leader>Gs', gs.stage_hunk)
				map('n', '<leader>Gu', gs.undo_stage_hunk)
				map('n', '<leader>Gp', gs.preview_hunk)

				map('n', '<leader>Gn', gs.next_hunk)
				map('n', '<leader>GN', gs.prev_hunk)

				map('n', '<leader>Gr', gs.reset_hunk)

				map('n', '<leader>Gd', gs.diffthis)
				map('n', '<leader>GD', function() gs.diffthis('~') end)

				map('n', '<leader>Gt', gs.toggle_deleted)

				-- Text object
				map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
			end
		})

