    local ok, bufferline = pcall(require, 'bufferline')
    if not ok then
      return
    end

    bufferline.setup {
        options = {
            mode = "tabs", -- set to "tabs" to only show tabpages instead
            numbers = "ordinal",
            separator_style = "slope",
            indicator = {
                icon = '', -- this should be omitted if indicator style is not 'icon'
                style = 'icon',
            },
            diagnostics = "coc",
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                return "("..count..")"
            end,
            offsets = {
               {
                   filetype = "nerdtree",
                   text = "File Explorer",
                   highlight = "Directory",
                   separator = true -- use a "true" to enable the default, or set your own character
               }
            },
        }
    }
