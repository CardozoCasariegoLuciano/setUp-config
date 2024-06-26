---@diagnostic disable: undefined-global
local ok, harpoon = pcall(require, 'harpoon')
    if not ok then
    return
end

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ma", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>ml", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>mn", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>mp", function() harpoon:list():next() end)
