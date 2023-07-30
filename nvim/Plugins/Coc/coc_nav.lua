-- show breadcrumbs if available
local function breadcrumbs()
  local items = vim.b.coc_nav
  local t = {''}
  for k,v in ipairs(items) do
    setmetatable(v, { __index = function(table, key)
      return ' '
    end})
    t[#t+1] = ' %#' .. (v.highlight or "Normal") .. '#' .. (type(v.label) == 'string' and v.label .. ' ' or '') .. '%#NonText#'.. (v.name or '')
    if next(items,k) ~= nil then
      t[#t+1] = '%#StatusLineNC# '
    end
  end
  t[#t+1] = '%#EndOfBuffer#%L  '
  return table.concat(t)
end
