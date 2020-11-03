local treesitter = require 'nvim-treesitter.configs'
local colorizer = require 'colorizer'

colorizer.setup()

treesitter.setup {
    ensure_installed = "maintained",
    highlight = { enable = true },
    indent = { enable = true },
}

