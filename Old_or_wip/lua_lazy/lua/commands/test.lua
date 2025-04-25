vim.api.nvim_create_user_command('Yadk', function()
 local text ="Primer use command"
 vim.api.nvim_buf_set_lines(0, -1, -1, true, {text})
end, {}
)

vim.keymap.set('n', 'Y', ":Yadk<CR>")
