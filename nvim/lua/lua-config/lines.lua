local lualine = require('lualine')
local bufferline = require('bufferline')

bufferline.setup({ options = { separator_style = "slant" } })

lualine.setup({
    extensions = { 'fzf', 'fugitive' },
    options = {
        icons_enabled = true,
        theme = 'gruvbox_material',
        section_separators = { '', '' },
        component_separators = { '::', '::' },
    },
    sections = {
        lualine_b = { 'branch', 'diff' },
        lualine_x = {{'diagnostics', sources={'nvim_lsp'}}, 'filetype' },
        lualine_y = { 'progress' }
    }
})
