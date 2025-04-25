lua << END
local function breadcrumbs()
  local items = vim.b.coc_nav
  local t = {'%='}

  -- Obtener el nombre del archivo actual
  local currentFile = vim.fn.expand('%:t')
  -- Agregar el nombre del archivo actual al principio de las migas de pan

  -- Obtener el icono correspondiente utilizando nvim-web-devicons
  local iconFile = require('nvim-web-devicons').get_icon('%:t', vim.fn.expand('%:e'), { default = true })

  t[#t+1] = iconFile .. ' '.. currentFile

  for k,v in ipairs(items) do
    setmetatable(v, { __index = function(table, key)
      return ' '
    end})

    t[#t+1] = ' >' .. (type(v.label) == 'string' and v.label .. '' or '') .. (v.name or '')
  end
  return table.concat(t)
end


require('lualine').setup{
  options = {
    icons_enabled = true,
    theme = "dracula"
  },
  winbar = {
    lualine_c = {breadcrumbs}
  },
  sections = {
    lualine_a = {
      {
        "filename",
        path = 1,
      }
    }
  }
}
END
