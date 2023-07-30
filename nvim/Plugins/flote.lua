local ok, flote = pcall(require, 'flote')
    if not ok then
    return
end

flote.setup()

local key = vim.keymap
key.set('n', '<Leader>ng', ':Flote global<CR>', {noremap = false})
key.set('n', '<Leader>nl', ':Flote<CR>', {noremap = false})

