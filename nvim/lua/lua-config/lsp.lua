local lspconfig = require('lspconfig')
local saga = require('lspsaga')
local compe = require('compe')
local fzf_lsp =  require('fzf_lsp')

saga.init_lsp_saga({
    code_action_keys = {
        quit = '<esc>', exec = '<CR>'
    },
    rename_action_keys = {
        quit = '<esc>', exec = '<CR>'
    },
})

fzf_lsp.setup()
lspconfig.vimls.setup({})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})
lspconfig.pyright.setup({})
lspconfig.tsserver.setup({})


-- setup diagnostics customizations
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = { spacing = 4, prefix = '▸' }
    }
)

compe.setup({
  debug = false,
  enabled = true,
  autocomplete = true,
  min_length = 1,
  preselect = 'enable',
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = true,

  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lsp = true,
    nvim_lua = true,
    treesitter = true
  },
})

