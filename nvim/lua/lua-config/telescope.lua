local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<Esc>"] = actions.close,
                ["<c-j>"] = actions.move_selection_next,
                ["<c-k>"] = actions.move_selection_previous
            }
        }
        -- winblend = 20
    }
}
