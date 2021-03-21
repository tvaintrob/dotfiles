-- miscellaneous plugins not related to a specific topic

require("colorizer").setup {}
require("nvim-treesitter.configs").setup {highlight = {enable = true}}
require("bufferline").setup {options = {separator_style = "slant"}}
require("lualine").setup {
    extensions = {"fzf", "fugitive"},
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
