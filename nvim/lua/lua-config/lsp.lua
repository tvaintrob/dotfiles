local saga = require("lspsaga")
local lspconfig = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lsp_options = {capabilities = capabilities}

lspconfig.vimls.setup(lsp_options)
lspconfig.cssls.setup(lsp_options)
lspconfig.html.setup(lsp_options)
lspconfig.jsonls.setup(lsp_options)
lspconfig.pyright.setup(lsp_options)
lspconfig.tsserver.setup(lsp_options)

local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/local/omnisharp-osx/run"

lspconfig.omnisharp.setup {
    capabilities = capabilities,
    cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)}
}

-- setup diagnostics customizations
vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {spacing = 4, prefix = "▸"}
    }
)

saga.init_lsp_saga {
    code_action_keys = {quit = "<esc>", exec = "<CR>"},
    rename_action_keys = {quit = "<esc>", exec = "<CR>"}
}
