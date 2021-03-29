-- miscellaneous plugins not related to a specific topic

require("indent_guides").setup {indent_start_level = 2}
require("colorizer").setup {}
require("nvim-treesitter.configs").setup {highlight = {enable = true}}
require("bufferline").setup {options = {separator_style = "slant"}}
require("lualine").setup {
    extensions = {"fugitive"},
    options = {
        icons_enabled = true,
        theme = "gruvbox_material",
        section_separators = {"", ""},
        component_separators = {"::", "::"}
    },
    sections = {
        lualine_b = {"branch", "diff"},
        lualine_x = {{"diagnostics", sources = {"nvim_lsp"}}, "filetype"},
        lualine_y = {"progress"}
    }
}

require("gitsigns").setup {
    signs = {
        -- TODO add hl to colorscheme
        add = {hl = "GitSignsAdd", text = "▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn"},
        change = {hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn"},
        delete = {hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn"},
        topdelete = {hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn"},
        changedelete = {hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn"}
    },
    numhl = false,
    linehl = false,
    keymaps = {
        -- Default keymap options
        noremap = true,
        buffer = true
    },
    watch_index = {
        interval = 1000
    },
    sign_priority = 6,
    update_debounce = 200,
    status_formatter = nil, -- Use default
    use_decoration_api = false
}

require("lspkind").init {
    with_text = true,
    symbol_map = {
        Text = "",
        Method = "ƒ",
        Function = "ƒ",
        Constructor = "",
        Variable = "",
        Class = "",
        Interface = "ﰮ",
        Module = "",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "了",
        Keyword = "",
        Snippet = "﬌",
        Color = "",
        File = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = ""
    }
}
