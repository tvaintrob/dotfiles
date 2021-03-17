local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
    defaults = {
        winblend = 20,
        mappings = {
            i = {
                ["<esc>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous
            },
        },
    },
})

